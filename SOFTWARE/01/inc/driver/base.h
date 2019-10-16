#ifndef _SLATE_VIXEN_DRIVER_BASE_H_
#define _SLATE_VIXEN_DRIVER_BASE_H_

#include <util.h>

#include "config.h"

namespace Driver
{
	class Base
	{
		public: // CONSTURCTORS
			Base(void) = default;
		public: // DESTURCTORS
			virtual ~Base(void) = default;

		public: // METHODS
			virtual bool init(void) = 0;
			virtual bool test(void) = 0;
	};
}

#endif
