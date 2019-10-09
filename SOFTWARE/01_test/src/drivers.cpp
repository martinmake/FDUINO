#include "drivers.h"

#define MOTOR_PWM_TRESHOLD 110

Drivers drivers;

Drivers::Drivers(void)
{
}

Drivers::~Drivers(void)
{
}

void Drivers::init(void)
{
	Timer0::Init timer0_init;
	timer0_init.mode                                 = Timer0::MODE::FAST_PWM;
	timer0_init.on_compare_match_output_A_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
	timer0_init.on_compare_match_output_B_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
	timer0_init.clock_source                         = Timer0::CLOCK_SOURCE::IO_CLK_OVER_64;
	timer0_init.output_compare_value_A               = 0x00;
	timer0_init.output_compare_value_B               = 0x00;
	timer0.init(timer0_init);

	usart0.init({ TIO_BAUD });
	stdout = usart0.stream();

	adc.init({ });
	adc.channel(0);
	adc.on_conversion = []()
	{
		uint8_t value = adc.value / 4;
		if (value)
		{
			value = value + MOTOR_PWM_TRESHOLD > 255 ? 255 : value + MOTOR_PWM_TRESHOLD;
			timer0.output_compare_register_A(value);
			timer0.output_compare_register_B(value);
		}
		else
		{
			timer0.output_compare_register_A(0x00);
			timer0.output_compare_register_B(0x00);
		}
	};

	sei();

	adc.start_sampling();
}

bool Drivers::test(TEST current_test)
{
	switch (current_test)
	{
		case ALL: return test();
		case DISTANCE_SENSOR:
		{

		}
	}

	return true;
}

bool Drivers::test(void)
{
	bool has_failed = false;

	if (test(DISTANCE_SENSOR)) has_failed = true;

	if (has_failed) return false;
	else            return true;
}
