#ifndef _SLATE_VIXEN_DRIVERS_H_
#define _SLATE_VIXEN_DRIVERS_H_

#include <util.h>
#include <adc.h>
#include <gpio.h>
#include <timer/timer0.h>
#include <usart/usart0.h>

#include "config.h"
#include "driver/all.h"

using namespace Timer;
using namespace Usart;

using namespace Driver;

class Drivers
{
	public: // TYPES
		enum TEST { ALL, MOTORS, LINE_SENSOR, OBSTACLE_DETECTOR };

	public: // CONSTURCTORS
		Drivers(void) = default;
	public: // DESTURCTORS
		~Drivers(void) = default;

	public: // VARIABLES
		Motors           motors;
		LineSensor       line_sensor;
		ObstacleDetector obstacle_detector;

	public: // GETTERS
		bool are_initialized(void) const;

	public: // METHODS
		bool init(void);
		bool test(void);
		bool test(TEST current_test);

	private:
		bool m_are_initialized = false;
};

// GETTERS
inline bool Drivers::are_initialized(void) const { return m_are_initialized; }

extern Drivers drivers;

#endif
