#ifndef _SLATE_VIXEN_DRIVER_OBSTACLE_DETECTOR_H_
#define _SLATE_VIXEN_DRIVER_OBSTACLE_DETECTOR_H_

#include "driver/base.h"

namespace Driver
{
	class ObstacleDetector : public Driver::Base
	{
		public: // CONSTURCTORS
			ObstacleDetector(void);
		public: // DESTURCTORS
			~ObstacleDetector(void);

		public: // METHODS
			bool init(void) override;
			bool test(void) override;
	};
}

#endif
