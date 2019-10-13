#ifndef _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_
#define _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_

#include "driver/base.h"

namespace Driver
{
	class LineSensors : public Driver::Base
	{
		public: // CONSTURCTORS
			LineSensors(void);
		public: // DESTURCTORS
			~LineSensors(void);
	};
}

#endif
