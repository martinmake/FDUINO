#ifndef _SLATE_VIXEN_DRIVER_MOTORS_H_
#define _SLATE_VIXEN_DRIVER_MOTORS_H_

#include <gpio.h>
#include <timer/timer0.h>

#include "driver/base.h"

using namespace Timer;

namespace Driver
{
	class Motors : public Driver::Base
	{
		public: // CONSTURCTORS
			Motors(void) = default;
		public: // DESTURCTORS
			~Motors(void) = default;

		public: // GETTERS
			void speed_left (void) const;
			void speed_right(void) const;
			void speed(void) const = delete;
		public: // SETTERS
			void speed_left (uint8_t pwm_stride);
			void speed_right(uint8_t pwm_stride);
			void speed(uint8_t pwm_stride_left, uint8_t pwm_stride_right);

		public: // METHODS
			bool init(void) override;
			bool test(void) override;

		private:
			Gpio<MOTOR_GPIO_PWM_LEFT>  m_pwm_left;
			Gpio<MOTOR_GPIO_DIR_LEFT>  m_dir_left;
			Gpio<MOTOR_GPIO_PWM_RIGHT> m_pwm_right;
			Gpio<MOTOR_GPIO_DIR_RIGHT> m_dir_right;
	};

	// SETTERS
	inline void Motors::speed_left (void) const { } // TODO: implement with incremental encoder
	inline void Motors::speed_right(void) const { } // TODO: implement with incremental encoder
	// SETTERS
	inline void Motors::speed(uint8_t pwm_stride_left, uint8_t pwm_stride_right)
	{
		speed_left (pwm_stride_left );
		speed_right(pwm_stride_right);
	}
	inline void Motors::speed_left (uint8_t pwm_stride) { timer0.output_compare_register_A(pwm_stride); }
	inline void Motors::speed_right(uint8_t pwm_stride) { timer0.output_compare_register_B(pwm_stride); }
}

#endif
