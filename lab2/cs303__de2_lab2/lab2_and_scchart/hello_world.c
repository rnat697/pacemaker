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
#include "sccharts.h"

int main()
{
// Create the struct
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
	return 0;
}
