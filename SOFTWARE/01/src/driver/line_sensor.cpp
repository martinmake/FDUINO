#include "driver/line_sensor.h"

namespace Driver
{
	// GETTERS
	float LineSensor::line_position(void)
	{
		sample_line();

		// TODO: filter

		uint8_t max_idx = 0;
		for (uint8_t i = 0; i < LINE_SENSOR_COUNT; i++)
		{
			if (m_sensor_values[i] > m_sensor_values[max_idx])
				max_idx = i;
		}

		float position = 0.0;
		for (uint8_t i = 0; i < LINE_SENSOR_COUNT; i++)
			position += m_sensor_values[i] * m_weights[i];

		return position;
	}

	// METHODS
	bool LineSensor::init(void)
	{
		m_sensor_0(INPUT);
		m_sensor_1(INPUT);
		m_sensor_2(INPUT);
		m_sensor_3(INPUT);
		m_sensor_4(INPUT);
		m_sensor_5(INPUT);

		m_weights[0] = -3 * LINE_SENSOR_WEIGHT_STEP;
		m_weights[1] = -2 * LINE_SENSOR_WEIGHT_STEP;
		m_weights[2] = -1 * LINE_SENSOR_WEIGHT_STEP;
		m_weights[3] = +1 * LINE_SENSOR_WEIGHT_STEP;
		m_weights[4] = +2 * LINE_SENSOR_WEIGHT_STEP;
		m_weights[5] = +3 * LINE_SENSOR_WEIGHT_STEP;

		adc.init({ });

		INIT_OK("LINE SENSOR");
	}
	bool LineSensor::test(void)
	{

		return OK;
	}
	void LineSensor::sample_line(void)
	{
		m_sensor_values[0] = adc.sample(LINE_SENSOR_ADC_CHANNEL_0);
		m_sensor_values[1] = adc.sample(LINE_SENSOR_ADC_CHANNEL_1);
		m_sensor_values[2] = adc.sample(LINE_SENSOR_ADC_CHANNEL_2);
		m_sensor_values[3] = adc.sample(LINE_SENSOR_ADC_CHANNEL_3);
		m_sensor_values[4] = adc.sample(LINE_SENSOR_ADC_CHANNEL_4);
		m_sensor_values[5] = adc.sample(LINE_SENSOR_ADC_CHANNEL_5);
	}
}
