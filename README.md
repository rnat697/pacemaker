# Assignment 1
DDD-Mode pacmaker in SCCharts and NIOS II

## Folder locations for respective code
- NIOS main code: ddd-mode-pacemaker-303-group-10\SCChart\DE2-115\software
- NIOS bsp code: ddd-mode-pacemaker-303-group-10\SCChart\DE2-115\HeLlOwOrLD_bsp
- SCChart code: ddd-mode-pacemaker-303-group-10\SCChart\DDD-mode\DDDpacemake2.sctx

# TO RUN PROJECT:
Software used:
- Quartus Prime
- SCCharts
- Eclipse for NIOS

You will need to make a new NIOS project with bsp and copy and paste all the code in the following files provided in SCChart/DE2-115/software folder
-pacecharts.c
-pacecharts.h
-hello_world.c
-timing.h

Timing set for each Timer in the timing.h file. Feel free to change the following values in the timing.h file: 
- AVI_VALUE 
- AEI_VALUE 
- PVARP_VALUE 
- VRP_VALUE 
- LRI_VALUE 
- URI_VALUE 

To run, use the Quartus Prime project file provided in SCChart, and compile/program with the USB blaster, before running the project in NIOS Eclipse with your own project.


Modes
Mode 1 is switch 0 on,  switch 1 off
Mode 2 is switch 0 off, switch 1 on

For mode 1 generating an actual heart beat, (sensing) is through Key 0 and key 1 buttons and is shown on green LEDs 4 and 5 respectively.(AS = KEY1 = LED 5, VS = KEY0 = LED 4) and pacing is shown throuhg green LED 1 & 0 (AP = LED1, VP = LED0). The respective pacing should occur if KEY0 or KEY1 is not pressed.

For mode 2 connect the UART on the board to the PC and run the CS303-Heart.exe file. Select the COM related to the UART and the baud rate of 115200. A negative signal shown on the exe file is the external stimulation from the pacemaker (AP and VP). A positive signal shown on exe fiel is the natural heartbeat (AS and VS).
