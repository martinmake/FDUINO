#include "driver/motors.h"

namespace Driver
{
	// METHODS
	bool Motors::init(void)
	{
		Timer0::Spec spec;
		spec.mode                                 = Timer0::MODE::FAST_PWM;
		spec.on_compare_match_output_A_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
		spec.on_compare_match_output_B_pin_action = Timer0::ON_COMPARE_MATCH_OUTPUT_PIN_ACTION::CLEAR;
		spec.clock_source                         = Timer0::CLOCK_SOURCE::IO_CLK_OVER_64;
		spec.output_compare_value_A               = 0x00;
		spec.output_compare_value_B               = 0x00;
		timer0.init(spec);

		INIT_OK("MOTORS");
	}
	bool Motors::test(void)
	{

		return OK;
	}
}
