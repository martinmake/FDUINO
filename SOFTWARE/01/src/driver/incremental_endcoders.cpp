#include "driver/incremental_encoders.h"

namespace Driver
{
	// METHODS
	bool IncrementalEncoders::init(void)
	{

		#ifdef VERBOSE_INIT
			printf(INIT_OK, "INCREMENTAL ENCODERS");
		#endif

		return OK;
	}
	bool IncrementalEncoders::test(void)
	{

		return OK;
	}
}
