#include "driver/motors.h"

namespace Driver
{
	// METHODS
	bool Motors::init(void)
	{
		Timer0::Init timer0_init;
		timer0_init.mode                                 = Timer0::MODE::FAST_PWM;
		timer0_init.on_compare_match_output_A_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
		timer0_init.on_compare_match_output_B_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
		timer0_init.clock_source                         = Timer0::CLOCK_SOURCE::IO_CLK_OVER_64;
		timer0_init.output_compare_value_A               = 0x00;
		timer0_init.output_compare_value_B               = 0x00;
		timer0.init(timer0_init);

		#ifdef VERBOSE_INIT
			printf(INIT_OK, "MOTORS");
		#endif

		return OK;
	}
	bool Motors::test(void)
	{

		return OK;
	}
}
