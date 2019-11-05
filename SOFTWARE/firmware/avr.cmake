option(WITH_MCU "Add the MCU type to the target file name." ON)

find_program(CC avr-gcc)
find_program(CXX avr-g++)
find_program(OBJCOPY avr-objcopy)
find_program(SIZE_TOOL avr-size)
find_program(OBJDUMP avr-objdump)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR avr)
set(CMAKE_C_COMPILER ${CC})
set(CMAKE_CXX_COMPILER ${CXX})

set(AVR TRUE)

set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

# some necessary tools and variables for AVR builds, which may not
# defined yet
# - UPLOADTOOL
# - UPLOADTOOL_PORT
# - PROGRAMMER
# - MCU
# - SIZE_ARGS

# defaults
if(NOT UPLOADTOOL)
	set(
		UPLOADTOOL avrdude
		CACHE STRING "Set default upload tool: avrdude"
	)
	find_program(UPLOADTOOL avrdude)
endif()
if(NOT UPLOADTOOL_PORT)
	set(
		UPLOADTOOL_PORT /dev/ttyUSB0
		CACHE STRING "Set default upload tool port: /dev/ttyUSB0"
	)
endif()
if(NOT PROGRAMMER)
	set(
		PROGRAMMER arduino
		CACHE STRING "Set default programmer hardware model: arduino"
	)
endif()
if(NOT MCU)
	set(
		MCU atmega328p
		CACHE STRING "Set default MCU: atmega328p (see 'avr-gcc --target-help' for valid values)"
	)
endif()
if(NOT SIZE_ARGS)
	if(APPLE)
		set(SIZE_ARGS -B)
	else()
		set(SIZE_ARGS -C;--mcu=${MCU})
	endif()
endif()

# prepare base flags for upload tool
set(UPLOADTOOL_BASE_OPTIONS -p ${MCU} -c ${PROGRAMMER})

# use UPLOADTOOL_BAUDRATE as baudrate for upload tool (if defined)
if(UPLOADTOOL_BAUDRATE)
	set(UPLOADTOOL_BASE_OPTIONS ${UPLOADTOOL_BASE_OPTIONS} -b ${UPLOADTOOL_BAUDRATE})
endif()

# check build types:
# - Debug
# - Release
# - RelWithDebInfo
#
# Release is chosen, because of some optimized functions in the
# AVR toolchain, e.g. _delay_ms().
if(
	NOT ((CMAKE_BUILD_TYPE MATCHES Release) OR
	(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo) OR
	(CMAKE_BUILD_TYPE MATCHES Debug) OR
	(CMAKE_BUILD_TYPE MATCHES MinSizeRel))
)
	set(
		CMAKE_BUILD_TYPE Release
		CACHE STRING "Choose cmake build type: Debug Release RelWithDebInfo MinSizeRel"
		FORCE
	)
endif()

# target file name add-on
if(WITH_MCU)
	set(MCU_TYPE_FOR_FILENAME "-${MCU}")
else()
	set(MCU_TYPE_FOR_FILENAME "")
endif()

##########################################################################
# add_avr_executable
# - IN_VAR: EXECUTABLE_NAME
#
# Creates targets and dependencies for AVR toolchain, building an
# executable. Calls add_executable with ELF file as target name, so
# any link dependencies need to be using that target, e.g. for
# target_link_libraries(<EXECUTABLE_NAME>-${MCU}.elf ...).
##########################################################################
function(add_avr_executable EXECUTABLE_NAME)

	if(NOT ARGN)
		message(FATAL_ERROR "No source files given for ${EXECUTABLE_NAME}.")
	endif()

	# set file names
	set(elf_file ${EXECUTABLE_NAME}.elf)
	set(hex_file ${EXECUTABLE_NAME}.hex)
	set(lst_file ${EXECUTABLE_NAME}.lst)
	set(map_file ${EXECUTABLE_NAME}.map)
	set(eeprom_image ${EXECUTABLE_NAME}-eeprom.hex)

	# elf file
	add_executable(${elf_file} EXCLUDE_FROM_ALL ${ARGN})

	set_target_properties(
		${elf_file}
		PROPERTIES
		 COMPILE_FLAGS "-mmcu=${MCU}"
		 LINK_FLAGS "-mmcu=${MCU} -Wl,--gc-sections -mrelax -Wl,-Map,${map_file}"
	)

	add_custom_command(
		OUTPUT ${hex_file}
		COMMAND
		 ${OBJCOPY} -j .text -j .data -O ihex ${elf_file} ${hex_file}
		COMMAND
		 ${SIZE_TOOL} ${SIZE_ARGS} ${elf_file}
		DEPENDS ${elf_file}
	)

	add_custom_command(
		OUTPUT ${lst_file}
		COMMAND
		 ${OBJDUMP} -d ${elf_file} > ${lst_file}
		DEPENDS ${elf_file}
	)

	# eeprom
	add_custom_command(
		OUTPUT ${eeprom_image}
		COMMAND
		 ${OBJCOPY} -j .eeprom --set-section-flags=.eeprom=alloc,load
			--change-section-lma .eeprom=0 --no-change-warnings
			-O ihex ${elf_file} ${eeprom_image}
		DEPENDS ${elf_file}
	)

	add_custom_target(
		${EXECUTABLE_NAME}
		ALL
		DEPENDS ${hex_file} ${lst_file} ${eeprom_image}
	)

	set_target_properties(
		${EXECUTABLE_NAME}
		PROPERTIES
		 OUTPUT_NAME "${elf_file}"
	)

	# clean
	get_directory_property(clean_files ADDITIONAL_MAKE_CLEAN_FILES)
	set_directory_properties(
		PROPERTIES
		 ADDITIONAL_MAKE_CLEAN_FILES "${map_file}"
	)

	# upload - with avrdude
	add_custom_target(
		upload_${EXECUTABLE_NAME}
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} ${UPLOADTOOL_OPTIONS}
		 -U flash:w:${hex_file}
		 -P ${UPLOADTOOL_PORT}
		DEPENDS ${hex_file}
		COMMENT "Uploading ${hex_file} to ${MCU} using ${PROGRAMMER}"
	)

	# upload eeprom only - with avrdude
	# see also bug http://savannah.nongnu.org/bugs/?40142
	add_custom_target(
		upload_${EXECUTABLE_NAME}_eeprom
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} ${UPLOADTOOL_OPTIONS}
		 -U eeprom:w:${eeprom_image}
		 -P ${UPLOADTOOL_PORT}
		DEPENDS ${eeprom_image}
		COMMENT "Uploading ${eeprom_image} to ${MCU} using ${PROGRAMMER}"
	)

	# disassemble
	add_custom_target(
		disassemble_${EXECUTABLE_NAME}
		${OBJDUMP} -h -S ${elf_file} > ${EXECUTABLE_NAME}.lst
		DEPENDS ${elf_file}
	)
endfunction()


##########################################################################
# add_avr_library
# - IN_VAR: LIBRARY_NAME
#
# Calls add_library with an optionally concatenated name
# <LIBRARY_NAME>${MCU_TYPE_FOR_FILENAME}.
# This needs to be used for linking against the library, e.g. calling
# target_link_libraries(...).
##########################################################################
function(add_avr_library LIBRARY_NAME)
	if(NOT ARGN)
		message(FATAL_ERROR "No source files given for ${LIBRARY_NAME}.")
	endif()

	add_library(${LIBRARY_NAME} STATIC ${ARGN})

	set_target_properties(
		${LIBRARY_NAME}
		PROPERTIES
		COMPILE_FLAGS "-mmcu=${MCU}"
		OUTPUT_NAME "${LIBRARY_NAME}"
	)

	if(NOT TARGET ${LIBRARY_NAME})
		add_custom_target(
			${LIBRARY_NAME}
			ALL
			DEPENDS ${LIBRARY_NAME}
		)

		set_target_properties(
			${LIBRARY_NAME}
			PROPERTIES
			OUTPUT_NAME "${LIBRARY_NAME}"
		)
	endif()
endfunction()

# avr_target_link_libraries
# - IN_VAR: EXECUTABLE_TARGET
# - ARGN	: targets and files to link to
#
# Calls target_link_libraries with AVR target names (concatenation,
# extensions and so on.
function(avr_target_link_libraries EXECUTABLE_TARGET)
	if(NOT ARGN)
		message(FATAL_ERROR "Nothing to link to ${EXECUTABLE_TARGET}.")
	endif()

	get_target_property(TARGET_LIST ${EXECUTABLE_TARGET} OUTPUT_NAME)

	foreach(TGT ${ARGN})
		if(TARGET ${TGT})
			get_target_property(ARG_NAME ${TGT} OUTPUT_NAME)
			list(APPEND NON_TARGET_LIST ${ARG_NAME})
		else()
			list(APPEND NON_TARGET_LIST ${TGT})
		endif()
	endforeach()

	target_link_libraries(${TARGET_LIST} ${NON_TARGET_LIST})
endfunction()

# avr_target_include_directories
# Calls target_include_directories with AVR target names
function(avr_target_include_directories EXECUTABLE_TARGET)
	if(NOT ARGN)
		message(FATAL_ERROR "No include directories to add to ${EXECUTABLE_TARGET}.")
	endif()

	get_target_property(TARGET_LIST ${EXECUTABLE_TARGET} OUTPUT_NAME)
	set(extra_args ${ARGN})

	target_include_directories(${TARGET_LIST} ${extra_args})
endfunction()

# avr_target_compile_definitions
# Calls target_compile_definitions with AVR target names
function(avr_target_compile_definitions EXECUTABLE_TARGET)
	if(NOT ARGN)
		message(FATAL_ERROR "No compile definitions to add to ${EXECUTABLE_TARGET}.")
	endif()

	get_target_property(TARGET_LIST ${EXECUTABLE_TARGET} OUTPUT_NAME)
	set(extra_args ${ARGN})

	target_compile_definitions(${TARGET_LIST} ${extra_args})
endfunction()

function(avr_generate_fixed_targets)
	add_custom_target(
		get_status
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} -P ${UPLOADTOOL_PORT} -n -v
		COMMENT "Get status from ${MCU}"
	)
	add_custom_target(
		get_fuses
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} -P ${UPLOADTOOL_PORT} -n
		 -U lfuse:r:-:b
		 -U hfuse:r:-:b
		COMMENT "Get fuses from ${MCU}"
	)
	add_custom_target(
		set_fuses
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} -P ${UPLOADTOOL_PORT}
		 -U lfuse:w:${L_FUSE}:m
		 -U hfuse:w:${H_FUSE}:m
		 COMMENT "Setup: High Fuse: ${H_FUSE} Low Fuse: ${L_FUSE}"
	)
	add_custom_target(
		get_calibration
		 ${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} -P ${UPLOADTOOL_PORT}
		 -U calibration:r:${MCU}_calib.tmp:r
		 COMMENT "Write calibration status of internal oscillator to ${MCU}_calib.tmp."
	)
	add_custom_target(
		set_calibration
		${UPLOADTOOL} ${UPLOADTOOL_BASE_OPTIONS} -P ${UPLOADTOOL_PORT}
		-U calibration:w:${MCU}_calib.hex
		COMMENT "Program calibration status of internal oscillator from ${MCU}_calib.hex."
	)
endfunction()
