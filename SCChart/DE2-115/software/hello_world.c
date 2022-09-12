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
//aron made the name OwO
#include <system.h>
#include <altera_avalon_pio_regs.h>
#include <stdio.h>
#include <stdint.h>
#include <sys/alt_alarm.h>
#include <sys/alt_irq.h>

#include "pacecharts.h"
#include "timing.h"


unsigned int volatile buttonAS;
unsigned int volatile buttonVS;
unsigned int volatile turnOffLED;

void button_interrupt_function(void* context, alt_u32 id){
	printf("Button interrupt happened \n"); // delete later
	int* temp = (int*) context; // casting context first
	(*temp) = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);

	// clear edge capture register
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE,0);
	printf("button: %i \n", *temp); // delete later
	if(*temp == 1){
		printf("AS interrupt");
		buttonAS = 1;

	}else if (*temp == 2){
		buttonVS = 1;
		printf("VS interrupt");
	}
}

void setGreenLED(uint pos, char val) {
	int current = IORD_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE);
	printf("Setting LED %d to %d\n", pos, val);
	if(val) {
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, current | (1 << pos));
	}
	else {
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, current & (~(1 << pos)));
	}
}

char getGreenLED(uint pos) {
	int current = IORD_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE);
	return (current >> pos) & 0x1;
}

//source from aron, :)
alt_u32 timerISR(void* context){
	int* timeCount = (int*) context;
	(*timeCount)++;
	return 1; // next time out is 1ms
}

alt_u32 vsLEDISR(void* context){
	setGreenLED(4, 0);

	return 0;
}

alt_u32 asLEDISR(void* context){
	setGreenLED(5, 0);

	return 0;
}

alt_u32 apLEDISR(void* context){
	setGreenLED(1, 0);

	return 0;
}

alt_u32 vpLEDISR(void* context){
	setGreenLED(0, 0);

	return 0;
}




void setup_interrupt(int*val){
	void *context_to_be_passed = (void*) val;
	//clear edge capture register
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE,0);
	// enable interrupts for left and right buttons i.e. button 2 and button 0
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0b00111111);// parameter ands value with mask so 7 = 111 which means key2-0 enabled.
	// register the ISR
	alt_irq_register(KEYS_IRQ,context_to_be_passed,button_interrupt_function);
}

int main()
{
	TickData data;
	alt_alarm ticker;
	alt_alarm ticker_VSLED;
	alt_alarm ticker_ASLED;
	alt_alarm ticker_APLED;
	alt_alarm ticker_VPLED;

	reset(&data);
	tick(&data);

	unsigned int uiSwitchValue = 0;
	unsigned int uiButtonsValue;
	unsigned int uiButtonsValuePrevious;


	FILE *lcd;
	printf("Hello from Nios II!\n");
	IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0);
	lcd = fopen(LCD_NAME, "w");

	uint64_t prevTime = 0;  //COMMENTS
	uint64_t systemTime = 0;
	void* timerContext = (void*) &systemTime;   //from aron github https://github.com/aron-jeremiah/CompSys303-SCCharts-Examples/blob/main/NiosExamples/SCCharts_Timer_Intergration_Example/main.c
	alt_alarm_start(&ticker, 1, timerISR, timerContext);





	while(1)
	{
		data.deltaT = systemTime - prevTime;
		prevTime = systemTime;



		//update inputs
		tick(&data);
		uiButtonsValue = 0;
		uiButtonsValuePrevious = 0;
		uiSwitchValue = IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE);
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, uiSwitchValue);
		int switchValueInteger = (int)(uiSwitchValue);

		data.AS =0;// reset on new tick
		data.VS = 0; // reset on new tick
		// need to do timers --> 6 counters in one timer?
		//how to init them and stuff

		// AP and VP is outputted on to the green lights so do we need an interrupt to know when that happens?

		if (switchValueInteger==1){ //mode1
			//printf("mode 1\n");
			 setup_interrupt(&uiButtonsValue);
			if(buttonAS == 1){ // 6 = KEY0
				data.AS = 1;
				buttonAS = 0;
				printf("AS set\n");

					if(!getGreenLED(5)) {
						setGreenLED(5, 1); // 00000001 for VS
						alt_alarm_start(&ticker_ASLED, 200, asLEDISR, timerContext);
					}
				}

			else if (buttonVS ==1){// 5 = KEY1
				data.VS = 1;
				buttonVS =0;
				printf("VS set\n");
				if(!getGreenLED(4)) {
					setGreenLED(4, 1); // 00000001 for VS
					alt_alarm_start(&ticker_VSLED, 200, vsLEDISR, timerContext);
				}
			}


			if(data.AP==1)
			{;
//					if(!getGreenLED(1)) {
//				setGreenLED(1, 1); // 00000001 for VS
//				alt_alarm_start(&ticker_APLED, 200, apLEDISR, timerContext);
//					}
			}


			else if(data.VP==1)
					{;
//				if(!getGreenLED(0)) {
//					setGreenLED(0, 1); // 00000001 for VS
//					alt_alarm_start(&ticker_VPLED, 200, vpLEDISR, timerContext);
//				}
			}




		else if (switchValueInteger==2){//mode2
			printf("mode 2\n");

		}


		//mode 1

			//intput KEY1 and KEY0 to simulate atrial and ventricular even
			//output green led when pacing both atrial and ventricle.

		//mode 2
			//input from uart connection, A and V stand for AS, VS
			//aaaaa




		//IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, uiSwitchValue);
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


			tick(&data);
		}
	}
	fclose(lcd);

}

