# Assignment 1
DDD-Mode pacmaker in SCCharts and NIOS II

# TO RUN PROJECT:
You will need to make a new NiOS project and copy and paste all the code provided in SCChart/DE2-115/software 
-pacechartcs.c
-pacecharts.h
-hello_world.c
-timing.h

Timing set for each Timer,
timing.h file

To run, use the quartus prime project file provided in SCChart, and compile/program the blaster, before running the project in NIOS Eclipse with your own project.


Modes
Mode 1 is switch 0 on,  switch 1 off
Mode 2 is switch 0 off, switch 1 on

For mode 1 generating an actual heart beat, (sensing) is through Key 0 and key 1 buttons and led 4&5.(AS-0-4LED,VS-1-5LED) and pacing is shown throuhg led 1 & 0.

For mode 2 connect the UART on the board to the PC and run the CS303-Heart.exe file. Select the COM related to the UART and the baud rate of 115200. A negative signal shown on the exe file is the external stimulation from the pacemaker. A positive signal shown on exe fiel is the natural heartbeat.