#ifndef _SLATE_VIXEN_DRIVER_INCREMENTAL_ENCODERS_H_
#define _SLATE_VIXEN_DRIVER_INCREMENTAL_ENCODERS_H_

#include <gpio.h>
#include <system_clock.h>

#include "driver/base.h"

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

		private:
			Gpio<INCREMENTAL_ENCODER_GPIO_LEFT>  m_input_left;
			Gpio<INCREMENTAL_ENCODER_GPIO_RIGHT> m_input_right;
	};

	// SETTERS
	inline int32_t IncrementalEncoders::distance_left(void) const
	{
		int32_t pulses_snapshot;
		ATOMIC_BLOCK(ATOMIC_FORCEON)
			pulses_snapshot = pulses_left;

		return (pulses_snapshot / INCREMENTAL_ENCODER_PULSES_PER_ROTATION) * WHEEL_CIRCUMFERENCE;
	}
	inline int32_t IncrementalEncoders::distance_right(void) const
	{
		int32_t pulses_snapshot;
		ATOMIC_BLOCK(ATOMIC_FORCEON)
			pulses_snapshot = pulses_right;

		return (pulses_snapshot / INCREMENTAL_ENCODER_PULSES_PER_ROTATION) * WHEEL_CIRCUMFERENCE;
	}
	inline int32_t IncrementalEncoders::distance(void) const
	{
		return (distance_left() + distance_right()) / 2;
	}
}

#endif
