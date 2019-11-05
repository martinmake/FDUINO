#include <Core/GPIO.h>

using namespace Core;
using namespace GPIO;

GPIO::Handle<PORT::B, 5> led(MODE::OUTPUT);

int main(void)
{
	while (true)
	{
		led.toggle();
		_delay_ms(200);

		led = HIGH;
		_delay_ms(200);
		led = LOW;
		_delay_ms(200);
	}
}
