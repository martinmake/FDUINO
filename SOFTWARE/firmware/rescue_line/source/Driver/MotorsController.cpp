#include "driver/motors_controller.h"

namespace Driver
{
	// METHODS
	bool MotorsController::init(void)
	{
		if (!m_motors.init())
			INIT_ERR("MOTORS CONTROLLER", "UNABLE TO INITIALIZE MOTORS DRIVER");
		if (!m_incremental_encoders.init())
			INIT_ERR("MOTORS CONTROLLER", "UNABLE TO INITIALIZE MOTORS DRIVER");

		INIT_OK("MOTORS CONTROLLER");
	}
	bool MotorsController::test(void)
	{

		return OK;
	}
}
