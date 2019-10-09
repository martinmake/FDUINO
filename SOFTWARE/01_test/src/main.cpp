#include "drivers.h"

int main(void)
{
	drivers.init();
	drivers.test();

	while (true)
	{
		printf("%d\n", adc.value);
	}
}
