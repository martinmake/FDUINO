#ifndef _SLATE_VIXEN_DRIVERS_H_
#define _SLATE_VIXEN_DRIVERS_H_

#include <util.h>
#include <Core/ADC.h>
#include <Core/GPIO.h>
#include <Core/Timer/Timer0.h>
#include <Core/Usart/Usart0.h>
#include <Led.h>

#include "config.h"

#include "Driver/MotorsController.h"
#include "Driver/Motors.h"
#include "Driver/IncrementalEncoders.h"
#include "Driver/LineSensor.h"
#include "Driver/ObstacleDetector.h"

using namespace Timer;
using namespace Usart;

using namespace Driver;

class Drivers
{
	public: // TYPES
		enum TEST
		{
			ALL,
			MOTORS_CONTROLLER,
			LINE_SENSOR,
			OBSTACLE_DETECTOR
		};

	public: // CONSTURCTORS
		Drivers(void) = default;
	public: // DESTURCTOR
		~Drivers(void) = default;

	public: // VARIABLES
		MotorsController motors_controller;
		LineSensor       line_sensor;
		ObstacleDetector obstacle_detector;
		Led<PORT::B, 5> led_left;
		Led<PORT::B, 5> led_right;

	public: // METHODS
		bool init(void);
		bool test(void);
		bool test(TEST current_test);
};

extern Drivers drivers;

#endif
