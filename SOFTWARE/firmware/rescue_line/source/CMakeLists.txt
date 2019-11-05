project(rescue_line)

add_avr_executable(
	${PROJECT_NAME}

	./config.h
	./driver/all.h
	./driver/base.cpp
	./driver/base.h
	./driver/incremental_encoders.h
	./driver/incremental_endcoders.cpp
	./driver/line_sensor.cpp
	./driver/line_sensor.h
	./driver/motors_controller.cpp
	./driver/motors_controller.h
	./driver/motors.cpp
	./driver/motors.h
	./driver/obstacle_detector.cpp
	./driver/obstacle_detector.h
	./drivers.cpp
	./drivers.h
	./main.cpp
)

target_include_directories(
	${PROJECT_NAME}.elf PRIVATE

	${PROJECT_SOURCE_DIR}
)

target_link_libraries(
	${PROJECT_NAME}.elf

	math
	util
	core
)
