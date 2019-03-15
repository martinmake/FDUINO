#include <avr/io.h>
#include <util/delay.h>

#include <standard/standard.h>

Pin led0({&PORTB, PB0});
Pin led1({&PORTB, PB1});

void init(void)
{
	led0.dd.set();
	led1.dd.set();
}

int main(void)
{
	init();

	while (1) {
		led0.port.set();
		led1.port.set();
		_delay_ms(250);
		led0.port.clear();
		led1.port.clear();
		_delay_ms(250);
	}
}
