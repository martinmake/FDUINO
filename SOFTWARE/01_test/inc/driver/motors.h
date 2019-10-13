#ifndef _SLATE_VIXEN_DRIVER_MOTORS_H_
#define _SLATE_VIXEN_DRIVER_MOTORS_H_

#include "driver/base.h"

namespace Driver
{
	class Motors : public Driver::Base
	{
		public: // CONSTURCTORS
			Motors(void);
		public: // DESTURCTORS
			~Motors(void);
	};
}
#endif
