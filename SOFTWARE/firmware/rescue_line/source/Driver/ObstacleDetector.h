#ifndef _SLATE_VIXEN_DRIVER_OBSTACLE_DETECTOR_H_
#define _SLATE_VIXEN_DRIVER_OBSTACLE_DETECTOR_H_

#include <vl53l0x/software.h>
#include <system_clock.h>

#include "driver/base.h"

namespace Driver
{
	class ObstacleDetector : public Driver::Base
	{
		public: // CONSTURCTORS
			ObstacleDetector(void) = default;
		public: // DESTURCTORS
			~ObstacleDetector(void) = default;

		public: // METHODS
			bool init(void) override;
			bool test(void) override;

		private:
			Vl53l0x::Software<
				OBSTACLE_DETECTOR_GPIO_SDA,
				OBSTACLE_DETECTOR_GPIO_SCL> vl53l0x;
	};
}

#endif
