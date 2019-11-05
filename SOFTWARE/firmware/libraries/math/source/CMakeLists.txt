project(math)

add_avr_library(
	${PROJECT_NAME}

	util.cpp
	math/util.h
)

target_include_directories(
	${PROJECT_NAME} PUBLIC

	${PROJECT_SOURCE_DIR}
)
