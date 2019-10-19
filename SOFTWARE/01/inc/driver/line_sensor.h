#ifndef _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_
#define _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_

#include <gpio.h>
#include <adc.h>

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
			float line_position(void);

		public: // METHODS
			bool init(void) override;
			bool test(void) override;
			void sample_line(void);

		private:
			uint16_t m_sensor_values[LINE_SENSOR_COUNT];
			int16_t  m_weights[LINE_SENSOR_COUNT];

			Gpio<LINE_SENSOR_GPIO_0> m_sensor_0;
			Gpio<LINE_SENSOR_GPIO_1> m_sensor_1;
			Gpio<LINE_SENSOR_GPIO_2> m_sensor_2;
			Gpio<LINE_SENSOR_GPIO_3> m_sensor_3;
			Gpio<LINE_SENSOR_GPIO_4> m_sensor_4;
			Gpio<LINE_SENSOR_GPIO_5> m_sensor_5;
	};
}

#endif
