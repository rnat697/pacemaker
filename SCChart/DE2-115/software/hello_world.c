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


#include "altera_avalon_uart.h"
#include "altera_avalon_uart_regs.h"

#include "pacecharts.h"
#include "timing.h"
// BAUD RATE IS 115200

unsigned int volatile buttonAS;
unsigned int volatile buttonVS;
unsigned int volatile turnOffLED;

typedef struct{
	alt_alarm ticker;
	alt_alarm ticker_VSLED;
	alt_alarm ticker_ASLED;
	alt_alarm ticker_APLED;
	alt_alarm ticker_VPLED;

}Ticks;

void button_interrupt_function(void* context, alt_u32 id){
	int* temp = (int*) context; // casting context first
	(*temp) = IORD_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE);

	// clear edge capture register
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE,0);
	if(*temp == 2){ // KEY1 button for AS input

		buttonAS = 1;

	}else if (*temp == 1){ // KEY0 button for VS input
		buttonVS = 1;
	}
}

void setGreenLED(uint pos, char val) {
	int current = IORD_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE);

	if(val) {
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, current | (1 << pos)); // Turn on green LED
	}
	else {
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, current & (~(1 << pos))); // Turn off  green LED
	}
}

char getGreenLED(uint pos) {
	int current = IORD_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE);
	return (current >> pos) & 0x1;
}

//source from aron, :)
alt_u32 timerISR(void* context){ // ISR timer for Scchart clocks
	int* timeCount = (int*) context;
	(*timeCount)++;
	return 1; // next time out is 1ms
}

/// ISRs for green LED so we can see it turn on and off
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




void setup_interrupt(int*val){//buttons for Mode 1
	void *context_to_be_passed = (void*) val;
	//clear edge capture register
	IOWR_ALTERA_AVALON_PIO_EDGE_CAP(KEYS_BASE,0);
	// enable interrupts for left and right buttons i.e. button 2 and button 0
	IOWR_ALTERA_AVALON_PIO_IRQ_MASK(KEYS_BASE, 0b00111111);// parameter ands value with mask so 7 = 111 which means key2-0 enabled.
	// register the ISR
	alt_irq_register(KEYS_IRQ,context_to_be_passed,button_interrupt_function);
}



//Aron helped again :)
// Controls how mode 1 operates, using buttons to send AS and VS signals and pace using green LEDS
void mode_1(unsigned int uiButtonsValue, TickData* data, Ticks* tickStruct, void* timerContext){
	setup_interrupt(&uiButtonsValue);
	if(buttonAS == 1){ // AS = KEY1

		 //use -> instead of . as it changes directly and not create a new instance?
		data->AS = 1;
		buttonAS = 0; //global parameter doesn't need assignment.
		printf("AS set\n");

			if(!getGreenLED(5)) {
				setGreenLED(5, 1); // turn on LED 5 for AS
				alt_alarm_start(&tickStruct->ticker_ASLED, 200, asLEDISR, timerContext);
			}
		}

	else if (buttonVS ==1){// VS = KEY0
		data->VS = 1;
		buttonVS =0;
		printf("VS set\n");
		if(!getGreenLED(4)) {
			setGreenLED(4, 1); // turn on LED 4 for VS
			alt_alarm_start(&tickStruct->ticker_VSLED, 200, vsLEDISR, timerContext);
		}
	}


	if(data->AP)
	{	printf("AP is paced\n");
		if(!getGreenLED(1)) {
			setGreenLED(1, 1); // turn on LED 1 for AP
			alt_alarm_start(&tickStruct->ticker_APLED, 200, apLEDISR, timerContext);
		}
	}


	else if(data->VP){
		printf("VP is paced\n");
		if(!getGreenLED(0)) {
			setGreenLED(0, 1); // turn on LED 0 for VS

			alt_alarm_start(&tickStruct->ticker_VPLED, 200, vpLEDISR, timerContext);
		}
	}
}

void mode_2(TickData* data){
	///////Uart Code//////
	IOWR_ALTERA_AVALON_UART_CONTROL(UART_BASE,0);


	if(IORD_ALTERA_AVALON_UART_STATUS(UART_BASE)& ALTERA_AVALON_UART_STATUS_RRDY_MSK){ // Check if UART is able to be red
		char input= IORD_ALTERA_AVALON_UART_RXDATA(UART_BASE);// read input data from UART
		IOWR_ALTERA_AVALON_UART_CONTROL(UART_BASE,(1<<7));


		if((input=='A')||(input=='a')) // Pass in AS into scchart code
		{
			printf("AS is set\n");
			data->AS = 1;
		}


		if((input=='V')||(input=='v')) // Pass in VS into scchart code
		{
			printf("VS is set\n");
			data->VS=1;

		}


	}
	if(data->AP){ 
			printf("AP is paced\n");
			while(!(IORD_ALTERA_AVALON_UART_STATUS(UART_BASE)& ALTERA_AVALON_UART_STATUS_TRDY_MSK)){} // wait for transmit to be ready
			IOWR_ALTERA_AVALON_UART_TXDATA(UART_BASE, 'A');
	}
	if(data->VP){
		printf("VP is paced\n");
		while(!(IORD_ALTERA_AVALON_UART_STATUS(UART_BASE)& ALTERA_AVALON_UART_STATUS_TRDY_MSK)){} // wait for transmit to be ready
		IOWR_ALTERA_AVALON_UART_TXDATA(UART_BASE, 'V');

	}

}

int main()
{
	TickData data;
	Ticks tickStruct;
	reset(&data);
	tick(&data);

	unsigned int uiSwitchValue = 0;
	unsigned int uiButtonsValue;


	FILE *lcd;
	printf("Hello from Nios II!\n");
	IOWR_ALTERA_AVALON_PIO_DATA(LEDS_GREEN_BASE, 0);
	lcd = fopen(LCD_NAME, "w");

	// set up timer for SCChart
	uint64_t prevTime = 0;
	uint64_t systemTime = 0;
	void* timerContext = (void*) &systemTime;   //from aron github https://github.com/aron-jeremiah/CompSys303-SCCharts-Examples/blob/main/NiosExamples/SCCharts_Timer_Intergration_Example/main.c
	alt_alarm_start(&tickStruct.ticker, 1, timerISR, timerContext);
	while(1)
	{	
		// Setting time for scchart code
		data.deltaT = systemTime - prevTime;
		prevTime = systemTime;

		//update inputs
		tick(&data);
		uiButtonsValue = 0;

		uiSwitchValue = IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE);
		IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, uiSwitchValue);
		int switchValueInteger = (int)(uiSwitchValue);

		data.AS =0;// reset on new tick
		data.VS = 0; // reset on new tick


		if (switchValueInteger==1){ //mode 1
			mode_1(uiButtonsValue,&data,&tickStruct, timerContext);

		}else if (switchValueInteger==2){//mode2
			mode_2(&data);

		}//switch mode end

	}
	fclose(lcd);

}
