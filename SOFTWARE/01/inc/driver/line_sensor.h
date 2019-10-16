#ifndef _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_
#define _SLATE_VIXEN_DRIVER_LINE_SENSOR_H_

#include "driver/base.h"

namespace Driver
{
	class LineSensor : public Driver::Base
	{
		public: // CONSTURCTORS
			LineSensor(void);
		public: // DESTURCTORS
			~LineSensor(void);

		public: // METHODS
			bool init(void) override;
			bool test(void) override;
	};
}

#endif
