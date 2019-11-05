project(util)

add_avr_library(
	${PROJECT_NAME}

	util.cpp
	cpp_allocation.cpp

	util/bits.h
	util/atomic.h
	util/assert.h
	util/tty.h
	util/cpp_allocation.h
	util.h
)

target_include_directories(
	${PROJECT_NAME} PUBLIC

	${PROJECT_SOURCE_DIR}
	${math_SOURCE_DIR}
)
