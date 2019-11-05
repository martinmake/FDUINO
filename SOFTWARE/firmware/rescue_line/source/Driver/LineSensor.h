#ifndef _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_
#define _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_

#include <Core/GPIO.h>
#include <Core/ADC.h>

#include "driver/base.h"

namespace Driver
{
	class LineSensor : public Driver::Base
	{
		public: // CONSTURCTORS
			LineSensor(void) = default;
		public: // DESTURCTORS
			~LineSensor(void) = default;

		public: // GETTERS
			float position  (void) const;
			bool  is_on_line(void) const;

		public: // METHODS
			bool init(void) override;
			bool test(void) override;
			void sample_line(void);
			void sense_line(void);

		private:
			float m_position;
			float m_average;
			bool  m_is_on_line;

			uint16_t m_sensor_values[LINE_SENSOR_COUNT];
			int16_t  m_weights[LINE_SENSOR_COUNT];

			Gpio<LINE_SENSOR_GPIO_0> m_sensor_0;
			Gpio<LINE_SENSOR_GPIO_1> m_sensor_1;
			Gpio<LINE_SENSOR_GPIO_2> m_sensor_2;
			Gpio<LINE_SENSOR_GPIO_3> m_sensor_3;
			Gpio<LINE_SENSOR_GPIO_4> m_sensor_4;
			Gpio<LINE_SENSOR_GPIO_5> m_sensor_5;
	};

	// GETTERS
	inline float LineSensor::position  (void) const { return m_position;   }
	inline bool  LineSensor::is_on_line(void) const { return m_is_on_line; }
}

#endif
