#ifndef _SLATE_VIXEN_DRIVERS_H_
#define _SLATE_VIXEN_DRIVERS_H_

#include <util.h>
#include <adc.h>
#include <gpio.h>
#include <timer/timer0.h>
#include <usart/usart0.h>
#include <led.h>

#include "config.h"
#include "driver/all.h"

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
		Led<LED_GPIO_LEFT> led_left;
		Led<LED_GPIO_LEFT> led_right;

	public: // METHODS
		bool init(void);
		bool test(void);
		bool test(TEST current_test);
};

extern Drivers drivers;

#endif
