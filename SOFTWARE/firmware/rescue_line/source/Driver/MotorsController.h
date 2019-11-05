#ifndef _SLATE_VIXEN_DRIVER_MOTORS_CONTROLLER_H_
#define _SLATE_VIXEN_DRIVER_MOTORS_CONTROLLER_H_

#include <gpio.h>

#include "driver/base.h"
#include "driver/motors.h"
#include "driver/incremental_encoders.h"

namespace Driver
{
	class MotorsController : public Driver::Base
	{
		public: // CONSTURCTORS
			MotorsController(void) = default;
		public: // DESTURCTORS
			~MotorsController(void) = default;

		public: // SETTERS
			void speed_left (uint8_t pwm_stride);
			void speed_right(uint8_t pwm_stride);
			void speed(
				uint8_t pwm_stride_left,
				uint8_t pwm_stride_right);

		public: // METHODS
			bool init(void) override;
			bool test(void) override;

		private:
			Motors              m_motors;
			IncrementalEncoders m_incremental_encoders;
	};

	// SETTERS
	inline void MotorsController::speed(
		uint8_t pwm_stride_left,
		uint8_t pwm_stride_right)
	{
		speed_left (pwm_stride_left );
		speed_right(pwm_stride_right);
	}
	inline void MotorsController::speed_left(uint8_t pwm_stride)
	{ timer0.output_compare_register_A(pwm_stride); }
	inline void MotorsController::speed_right(uint8_t pwm_stride)
	{ timer0.output_compare_register_B(pwm_stride); }
}

#endif
