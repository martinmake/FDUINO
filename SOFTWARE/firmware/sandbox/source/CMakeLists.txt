project(sandbox)

add_avr_executable(
	${PROJECT_NAME}

	main.cpp
)

target_include_directories(
	${PROJECT_NAME}.elf PRIVATE
)

target_link_libraries(
	${PROJECT_NAME}.elf

	math
	util
	core
)
