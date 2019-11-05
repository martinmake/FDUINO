cmake_minimum_required(VERSION 2.8)

include(avr.cmake)

project(firmware)

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_C_STANDARD   c99)

set(MCU atmega328p)
set(F_CPU "16000000")
set(H_FUSE 0xd9)
set(L_FUSE 0xc3)

set(UPLOADTOOL avrdude)
set(PROGRAMMER arduino)
set(UPLOADTOOL_PORT /dev/ttyUSB0)

message(STATUS "Current uploadtool  is: ${UPLOADTOOL}")
message(STATUS "Current programmer  is: ${PROGRAMMER}")
message(STATUS "Current upload port is: ${UPLOADTOOL_PORT}")
message(STATUS "Current uploadtool options are: ${UPLOADTOOL_OPTIONS}")
message(STATUS "Current MCU    is set to: ${MCU}")
message(STATUS "Current H_FUSE is set to: ${H_FUSE}")
message(STATUS "Current L_FUSE is set to: ${L_FUSE}")

if(NOT CMAKE_BUILD_TYPE)
	set(CMAKE_BUILD_TYPE Release)
endif()

# some cmake cross-compile necessities
if(DEFINED ENV{AVR_FIND_ROOT_PATH})
	set(CMAKE_FIND_ROOT_PATH $ENV{AVR_FIND_ROOT_PATH})
else()
	if(EXISTS "/opt/local/avr")
		set(CMAKE_FIND_ROOT_PATH "/opt/local/avr")
	elseif(EXISTS "/usr/avr")
		set(CMAKE_FIND_ROOT_PATH "/usr/avr")
	elseif(EXISTS "/usr/lib/avr")
		set(CMAKE_FIND_ROOT_PATH "/usr/lib/avr")
	elseif(EXISTS "/usr/local/CrossPack-AVR")
		set(CMAKE_FIND_ROOT_PATH "/usr/local/CrossPack-AVR")
	else()
		message(FATAL_ERROR "Please set AVR_FIND_ROOT_PATH in your environment.")
	endif()
endif()
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# not added automatically, since CMAKE_SYSTEM_NAME is "generic"
set(CMAKE_SYSTEM_INCLUDE_PATH "${CMAKE_FIND_ROOT_PATH}/include")
set(CMAKE_SYSTEM_LIBRARY_PATH "${CMAKE_FIND_ROOT_PATH}/lib")

message(STATUS "Set CMAKE_FIND_ROOT_PATH      to ${CMAKE_FIND_ROOT_PATH}")
message(STATUS "Set CMAKE_SYSTEM_INCLUDE_PATH to ${CMAKE_SYSTEM_INCLUDE_PATH}")
message(STATUS "Set CMAKE_SYSTEM_LIBRARY_PATH to ${CMAKE_SYSTEM_LIBRARY_PATH}")

if(CMAKE_BUILD_TYPE MATCHES Release)
	set(CMAKE_C_FLAGS_RELEASE "-Os")
	set(CMAKE_CXX_FLAGS_RELEASE "-Os")
endif()
if(CMAKE_BUILD_TYPE MATCHES RelWithDebInfo)
	set(CMAKE_C_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-Os -save-temps -g -gdwarf-3 -gstrict-dwarf")
endif()
if(CMAKE_BUILD_TYPE MATCHES Debug)
	set(CMAKE_C_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")
	set(CMAKE_CXX_FLAGS_DEBUG "-O0 -save-temps -g -gdwarf-3 -gstrict-dwarf")
endif()

add_definitions("-DF_CPU=${F_CPU}")
add_definitions("-fpack-struct")
add_definitions("-fshort-enums")
add_definitions("-Wall")
add_definitions("-Werror")
add_definitions("-pedantic")
add_definitions("-pedantic-errors")
add_definitions("-funsigned-char")
add_definitions("-funsigned-bitfields")
add_definitions("-ffunction-sections")
add_definitions("-c")

add_custom_target(
	tags ALL

    COMMAND ctags -R --c++-kinds=+p --fields=+iaS --extras=+q .
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
)

add_subdirectory(libraries)
add_subdirectory(sandbox)
add_subdirectory(rescue_line)
