#ifndef _SLATE_VIXEN_DRIVER_BASE_H_
#define _SLATE_VIXEN_DRIVER_BASE_H_

#include <util.h>

#include "config.h"

#ifdef VERBOSE_INIT
#define INIT_OK( ...) { tty_escape_sequence(FORMAT_INIT_OK ); printf(MESSAGE_INIT_OK,  __VA_ARGS__); return OK;  }
#define INIT_ERR(...) { tty_escape_sequence(FORMAT_INIT_ERR); printf(MESSAGE_INIT_ERR, __VA_ARGS__); return ERR; }
#else
#define INIT_OK( ...) return OK;
#define INIT_ERR(...) return ERR;
#endif

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
