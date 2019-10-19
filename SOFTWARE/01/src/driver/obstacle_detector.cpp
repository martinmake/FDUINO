#include "driver/obstacle_detector.h"

namespace Driver
{
	// METHODS
	bool ObstacleDetector::init(void)
	{
		vl53l0x.init();

		SYSTEM_CLOCK_TIMEOUT(200) if (vl53l0x.is_connected()) break;
		if (system_clock.has_timed_out())
			INIT_ERR("OBSTACLE DETECTOR", "VL53L0X IS NOT CONNECTED!")
		else
			INIT_OK ("OBSTACLE DETECTOR")
	}
	bool ObstacleDetector::test(void)
	{

		return OK;
	}
}
