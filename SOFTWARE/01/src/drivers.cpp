#include "drivers.h"

Drivers drivers;

bool Drivers::init(void)
{
	motors           .init();
	line_sensor      .init();
	obstacle_detector.init();

	sei();

	m_are_initialized = true;

	return OK;
}

bool Drivers::test(TEST current_test)
{
	switch (current_test)
	{
		case ALL:               return                   test(); break;
		case MOTORS:            return motors           .test(); break;
		case LINE_SENSOR:       return line_sensor      .test(); break;
		case OBSTACLE_DETECTOR: return obstacle_detector.test(); break;
		default: return ERR;
	}
}

bool Drivers::test(void)
{
	bool has_failed = false;

	if (test(MOTORS           )) has_failed = true;
	if (test(LINE_SENSOR      )) has_failed = true;
	if (test(OBSTACLE_DETECTOR)) has_failed = true;

	if (has_failed) return ERR;
	else            return OK;
}
