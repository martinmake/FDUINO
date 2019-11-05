#ifndef _TIMER_TIMER0_H_
#define _TIMER_TIMER0_H_

#include <util.h>

#include "core/timer/base.h"

namespace Core
{
	namespace Timer
	{
		class Timer0 : public Timer::Base<uint8_t>
		{
			public: // CONSTRUCTORS
				Timer0(void) = default;
				Timer0(const Spec& spec);
			public: // DESTRUCTOR
				~Timer0(void) = default;

			public: // GETTERS
				uint8_t count                 (void) const override;
				uint8_t output_compare_value_A(void) const override;
				uint8_t output_compare_value_B(void) const override;
				uint8_t input_capture_value   (void) const override;
			public: // SETTERS
				void count                 (uint8_t new_count                 ) override;
				void output_compare_value_A(uint8_t new_output_compare_value_A) override;
				void output_compare_value_B(uint8_t new_output_compare_value_B) override;
				void input_capture_value   (uint8_t new_input_capture_value   ) override;
				//
				void pin_action_on_output_compare_match_A(TIMER::PIN_ACTION_ON_OUTPUT_COMPARE_MATCH new_pin_action_on_output_compare_match_A) override;
				void pin_action_on_output_compare_match_B(TIMER::PIN_ACTION_ON_OUTPUT_COMPARE_MATCH new_pin_action_on_output_compare_match_B) override;
				void input_capture(TIMER::INPUT_CAPTURE new_input_capture) override;
				void clock_source(TIMER::CLOCK_SOURCE new_clock_source) override;

			public: // METHODS
				void  enable(TIMER::INTERRUPT interrupt) override;
				void disable(TIMER::INTERRUPT interrupt) override;
				//
				void force_output_compare_A(void) override;
				void force_output_compare_B(void) override;

			private:
				void update_waveform_generation(void) override;
		};

		// GETTERS
		inline uint8_t Timer0::count                 (void) const { return TCNT0; }
		inline uint8_t Timer0::output_compare_value_A(void) const { return OCR0A; }
		inline uint8_t Timer0::output_compare_value_B(void) const { return OCR0B; }
		inline uint8_t Timer0::input_capture_value   (void) const
		{ assert(false && "HARDWARE DOES NOT SUPPORT THIS FUNCTION"); return 0; }
		// SETTERS
		inline void Timer0::count                 (uint8_t new_count                 ) { TCNT0 = new_count;                  }
		inline void Timer0::output_compare_value_A(uint8_t new_output_compare_value_A) { OCR0A = new_output_compare_value_A; }
		inline void Timer0::output_compare_value_B(uint8_t new_output_compare_value_B) { OCR0B = new_output_compare_value_B; }
		inline void Timer0::input_capture_value   (uint8_t new_input_capture_value   )
		{ (void) new_input_capture_value; assert(false && "HARDWARE DOES NOT SUPPORT THIS FUNCTION"); }
		//
		inline void Timer0::pin_action_on_output_compare_match_A(
				TIMER::PIN_ACTION_ON_OUTPUT_COMPARE_MATCH new_pin_action_on_output_compare_match_A)
		{
			using namespace TIMER;
			switch (new_pin_action_on_output_compare_match_A)
			{
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::PASS:
					CLEAR(TCCR0A, COM0A0);
					CLEAR(TCCR0A, COM0A1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::TOGGLE:
					SET  (TCCR0A, COM0A0);
					CLEAR(TCCR0A, COM0A1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::CLEAR:
					CLEAR(TCCR0A, COM0A0);
					SET  (TCCR0A, COM0A1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::SET:
					SET  (TCCR0A, COM0A0);
					SET  (TCCR0A, COM0A1);
					break;
				default: assert(false && "INVALID VALUE");
			}
		}
		inline void Timer0::pin_action_on_output_compare_match_B(
			TIMER::PIN_ACTION_ON_OUTPUT_COMPARE_MATCH new_pin_action_on_output_compare_match_B)
		{
			using namespace TIMER;
			switch (new_pin_action_on_output_compare_match_B)
			{
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::PASS:
					CLEAR(TCCR0A, COM0B0);
					CLEAR(TCCR0A, COM0B1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::TOGGLE:
					SET  (TCCR0A, COM0B0);
					CLEAR(TCCR0A, COM0B1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::CLEAR:
					CLEAR(TCCR0A, COM0B0);
					SET  (TCCR0A, COM0B1);
					break;
				case PIN_ACTION_ON_OUTPUT_COMPARE_MATCH::SET:
					SET  (TCCR0A, COM0B0);
					SET  (TCCR0A, COM0B1);
					break;
				default: assert(false && "INVALID VALUE");
			}
		}
		inline void Timer0::input_capture(TIMER::INPUT_CAPTURE new_input_capture)
		{
			using namespace TIMER;
			assert(new_input_capture == INPUT_CAPTURE::DISABLED);
		}
		inline void Timer0::clock_source(TIMER::CLOCK_SOURCE new_clock_source)
		{
			m_spec.clock_source = new_clock_source;

			using namespace TIMER;
			switch (new_clock_source)
			{
				case CLOCK_SOURCE::NO:
					CLEAR(TCCR0B, CS00);
					CLEAR(TCCR0B, CS01);
					CLEAR(TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::IO_CLK_OVER_1:
					SET  (TCCR0B, CS00);
					CLEAR(TCCR0B, CS01);
					CLEAR(TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::IO_CLK_OVER_8:
					CLEAR(TCCR0B, CS00);
					SET  (TCCR0B, CS01);
					CLEAR(TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::IO_CLK_OVER_64:
					SET  (TCCR0B, CS00);
					SET  (TCCR0B, CS01);
					CLEAR(TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::IO_CLK_OVER_256:
					CLEAR(TCCR0B, CS00);
					CLEAR(TCCR0B, CS01);
					SET  (TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::IO_CLK_OVER_1024:
					SET  (TCCR0B, CS00);
					CLEAR(TCCR0B, CS01);
					SET  (TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::EXTERNAL_ON_FALLING_EDGE:
					CLEAR(TCCR0B, CS00);
					SET  (TCCR0B, CS01);
					SET  (TCCR0B, CS02);
					break;
				case CLOCK_SOURCE::EXTERNAL_ON_RISING_EDGE:
					SET  (TCCR0B, CS00);
					SET  (TCCR0B, CS01);
					SET  (TCCR0B, CS02);
					break;
				default: assert(false && "INVALID VALUE");
			}
		}

		// METHODS
		inline void Timer0::enable(TIMER::INTERRUPT interrupt)
		{
			using namespace TIMER;
			switch (interrupt)
			{
				case INTERRUPT::ON_OUTPUT_COMPARE_MATCH_A:
					SET(TIMSK0, OCIE0A);
					break;
				case INTERRUPT::ON_OUTPUT_COMPARE_MATCH_B:
					SET(TIMSK0, OCIE0B);
					break;
				case INTERRUPT::ON_OVERFLOW:
					SET(TIMSK0, TOIE0);
					break;
				default: assert(false && "INVALID VALUE");
			}
		}
		inline void Timer0::disable(TIMER::INTERRUPT interrupt)
		{
			using namespace TIMER;
			switch (interrupt)
			{
				case INTERRUPT::ON_OUTPUT_COMPARE_MATCH_A:
					CLEAR(TIMSK0, OCIE0A);
					break;
				case INTERRUPT::ON_OUTPUT_COMPARE_MATCH_B:
					CLEAR(TIMSK0, OCIE0B);
					break;
				case INTERRUPT::ON_OVERFLOW:
					CLEAR(TIMSK0, TOIE0);
					break;
				default: assert(false && "INVALID VALUE");
			}
		}
		//
		inline void Timer0::force_output_compare_A(void) { SET(TCCR0B, FOC0A); }
		inline void Timer0::force_output_compare_B(void) { SET(TCCR0B, FOC0B); }
		//
		inline void Timer0::update_waveform_generation(void)
		{
			using namespace TIMER;
			switch (m_spec.mode)
			{
				case MODE::NORMAL: switch (m_spec.top)
				{
					case TOP::MAX:
						CLEAR(TCCR0A, WGM00);
						CLEAR(TCCR0A, WGM01);
						CLEAR(TCCR0A, WGM02);
						break;
					default: assert(false && "INVALID VALUE");
				} break;
				case MODE::CTC: switch (m_spec.top)
				{
					case TOP::OUTPUT_COMPARE_VALUE_A:
						CLEAR(TCCR0A, WGM00);
						SET  (TCCR0A, WGM01);
						CLEAR(TCCR0A, WGM02);
						break;
					default: assert(false && "INVALID VALUE");
				} break;
				case MODE::FAST_PWM: switch (m_spec.top)
				{
					case TOP::MAX:
						SET  (TCCR0A, WGM00);
						SET  (TCCR0A, WGM01);
						CLEAR(TCCR0A, WGM02);
						break;
					case TOP::OUTPUT_COMPARE_VALUE_A:
						SET  (TCCR0A, WGM00);
						SET  (TCCR0A, WGM01);
						SET  (TCCR0A, WGM02);
						break;
					default: assert(false && "INVALID VALUE");
				} break;
				case MODE::PHASE_CORRECT_PWM: switch (m_spec.top)
				{
					case TOP::MAX:
						SET  (TCCR0A, WGM00);
						CLEAR(TCCR0A, WGM01);
						CLEAR(TCCR0A, WGM02);
						break;
					case TOP::OUTPUT_COMPARE_VALUE_A:
						SET  (TCCR0A, WGM00);
						CLEAR(TCCR0A, WGM01);
						SET  (TCCR0A, WGM02);
						break;
					default: assert(false && "INVALID VALUE");
				} break;
				default: assert(false && "INVALID VALUE");
			}
		}
	}

	extern Timer::Timer0 timer0;
}

#endif
