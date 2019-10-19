#include "drivers.h"

Drivers drivers;

bool Drivers::init(void)
{
	system_clock.init({ SystemClock::TIMER2 });

	usart0.init({ TIO_BAUD });
	stdout = usart0.stream();
	stdin  = usart0.stream();

	sei();

	tty_escape_sequence(FORMAT_WELCOME);
	for (const char* p = MESSAGE_WELCOME_PROGMEM; p < MESSAGE_WELCOME_PROGMEM + strlen(MESSAGE_WELCOME_PROGMEM); p++)
	{
		char c = pgm_read_byte(p);
		putchar(c);
	} putchar('\n');
	tty_escape_sequence(NORMAL);

	motors_controller.init();
	line_sensor      .init();
	obstacle_detector.init();
	tty_escape_sequence(NORMAL);

	return OK;
}

bool Drivers::test(TEST current_test)
{
	switch (current_test)
	{
		case ALL:               return                   test(); break;
		case MOTORS_CONTROLLER: return motors_controller.test(); break;
		case LINE_SENSOR:       return line_sensor      .test(); break;
		case OBSTACLE_DETECTOR: return obstacle_detector.test(); break;
		default: return ERR;
	}
}

bool Drivers::test(void)
{
	bool has_failed = false;

	if (test(MOTORS_CONTROLLER)) has_failed = true;
	if (test(LINE_SENSOR      )) has_failed = true;
	if (test(OBSTACLE_DETECTOR)) has_failed = true;

	if (has_failed) return ERR;
	else            return OK;
}
