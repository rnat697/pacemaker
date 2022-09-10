/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include "sccharts_ddd.h"
#include "timing.h"
int main()
{
	unsigned int uiSwitchValue = 0;
	unsigned int uiButtonsValue = 0;
	unsigned int uiButtonsValuePrevious = 0;
	FILE *lcd;
	printf("Hello from Nios II!\n");
	IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0xaa);
	lcd = fopen(LCD_NAME, "w");
	while(1)
	{
		uiSwitchValue = IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE);
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, uiSwitchValue);
		uiButtonsValuePrevious = uiButtonsValue;
		uiButtonsValue = IORD_ALTERA_AVALON_PIO_DATA(KEYS_BASE);
		if(lcd != NULL)
		{
			if(uiButtonsValuePrevious != uiButtonsValue)
			{
				#define ESC 27
				#define CLEAR_LCD_STRING "[2J"
				fprintf(lcd, "%c%s", ESC, CLEAR_LCD_STRING);
				fprintf(lcd, "BUTTON VALUE: %d\n", uiButtonsValue);
			}
		}
	}
	fclose(lcd);
	return 0;

	/*//Create the struct
	TickData data;
	// Initialise
	reset(&data);
	while(1)
	{
	// Fetch button inputs
	// A is Key 2, B is Key 1, R is Key 0
	// Remember that keys are active low
	// Do a tick!
	tick(&data);
	// Output O to Red LED
	}
	return 0;*/
}
