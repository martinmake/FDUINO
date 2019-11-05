#ifndef _SLATE_VIXEN_DRIVER_INCREMENTAL_ENCODERS_H_
#define _SLATE_VIXEN_DRIVER_INCREMENTAL_ENCODERS_H_

#include <Core/GPIO.h>
#include <Core/ExternalInterrupt.h>
#include <SystemClock.h>

#include "Driver/Base.h"

namespace Driver
{
	class IncrementalEncoders : public Driver::Base
	{
		public: // CONSTURCTORS
			IncrementalEncoders(void) = default;
		public: // DESTURCTORS
			~IncrementalEncoders(void) = default;

		public: // GETTERS
			int32_t distance_left (void) const;
			int32_t distance_right(void) const;
			int32_t distance      (void) const;

		public: // METHODS
			bool init(void) override;
			bool test(void) override;

		public:
			static volatile int32_t pulses_left;
			static volatile int32_t pulses_right;
			static Gpio<INCREMENTAL_ENCODER_GPIO_LEFT>  m_input_left;
			static Gpio<INCREMENTAL_ENCODER_GPIO_RIGHT> m_input_right;

		private:
			ExternalInterrupt m_encoder_pin_change_left;
			ExternalInterrupt m_encoder_pin_change_right;
	};

	// SETTERS
	inline int32_t IncrementalEncoders::distance_left(void) const
	{
		int32_t pulses_snapshot;
		ATOMIC() pulses_snapshot = pulses_left;

		return pulses_snapshot * WHEEL_CIRCUMFERENCE / INCREMENTAL_ENCODER_PULSES_PER_ROTATION;
	}
	inline int32_t IncrementalEncoders::distance_right(void) const
	{
		int32_t pulses_snapshot;
		ATOMIC() pulses_snapshot = pulses_right;

		return pulses_snapshot * WHEEL_CIRCUMFERENCE / INCREMENTAL_ENCODER_PULSES_PER_ROTATION;
	}
	inline int32_t IncrementalEncoders::distance(void) const
	{
		return (distance_left() + distance_right()) / 2;
	}
}

#endif
