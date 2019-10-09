#ifndef _SLATE_VIXEN_DRIVERS_H_
#define _SLATE_VIXEN_DRIVERS_H_

#include <util.h>
#include <adc.h>
#include <gpio.h>
#include <timer/timer0.h>
#include <usart/usart0.h>

using namespace Timer;
using namespace Usart;

class Drivers
{
	public: // TYPES
		enum TEST { ALL, DISTANCE_SENSOR };

	public: // CONSTURCTORS
		Drivers(void);
	public: // DESTURCTORS
		~Drivers(void);

	public: // GETTERS
		bool are_initialized(void) const;

	public: // METHODS
		void init(void);
		bool test(TEST current_test);
		bool test(void);

	private:
		bool m_are_initialized = false;
};

// GETTERS
inline bool Drivers::are_initialized(void) const { return m_are_initialized; }

extern Drivers drivers;

#endif
