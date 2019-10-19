#include "driver/incremental_encoders.h"

namespace Driver
{
	volatile int32_t IncrementalEncoders::pulses_left  = 0;
	volatile int32_t IncrementalEncoders::pulses_right = 0;
	Gpio<INCREMENTAL_ENCODER_GPIO_LEFT>  IncrementalEncoders::m_input_left (INPUT);
	Gpio<INCREMENTAL_ENCODER_GPIO_RIGHT> IncrementalEncoders::m_input_right(INPUT);

	// METHODS
	bool IncrementalEncoders::init(void)
	{
		ExternalInterrupt::Spec external_interrupt_spec;
		external_interrupt_spec.sense = ExternalInterrupt::SENSE::LOGICAL_CHANGE;

		external_interrupt_spec.interrupt = ExternalInterrupt::INCREMENTAL_ENCODER_INTERRUPT_LEFT;
		external_interrupt_spec.on_interrupt = []()
		{
			if (m_input_left) pulses_left++;
			else              pulses_left--;
		};
		m_encoder_pin_change_left .init(external_interrupt_spec);

		external_interrupt_spec.interrupt = ExternalInterrupt::INCREMENTAL_ENCODER_INTERRUPT_RIGHT;
		external_interrupt_spec.on_interrupt = []()
		{
			if (m_input_right) pulses_right++;
			else               pulses_right--;
		};
		m_encoder_pin_change_right.init(external_interrupt_spec);

		#ifdef VERBOSE_INIT
			INIT_OK("INCREMENTAL ENCODERS");
		#endif

		return OK;
	}
	bool IncrementalEncoders::test(void)
	{

		return OK;
	}
}
