//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------
//Julian Kemmerer
//Exam 1 Problem 2
//ECEC 356 Summer 11

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned int currentCount = 0;
extern unsigned int time1 = 0;
extern unsigned int time2 = 0;
extern unsigned char dataAvailable = 0;

void main(void)
{
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	Timer_EnableInt();//Enable interruptes on timer
	Timer_Start();
	
	//Start LCD
	LCD_Start();
	LCD_Init();

	//SW1 connected to P1[0]
	//1 Clock tick every (1*10^-3)/10 = 0.0001 sec per cycles = 10000 Hz = .01 MHz
	//SysClk = 24Mhz
	//VC1 = sysclk/8 = 3Mhz
	//VC2 = VC1/3 = 1Mhz
	//VC3 source is VC2
	//VC3 = VC2/100 = .01Mhz
	//Timer clock is VC3
	
	while(1)//Control Loop
	{
	}
	
	
}
#pragma interrupt_handler switchDown
void switchDown()
{
	//Gather current count
	currentCount = Timer_wReadTimerSaveCV();
	
	//3 seconds clocked at .0001 sec per cycles is 30000 timer ticks
	if(currentCount >= 30000)
	{
		//Reset timer
		Timer_WriteCompareValue(0); 
	}
	else
	{
		//Check for previous values
		if(dataAvailable != 0)
		{
			//Data has been collected - collect second value
			time2 = currentCount;
			//Data is no longer available since the second value has been collected
			dataAvailable = 0;
			//Let user know
			LCD_Position(1,0);
			LCD_PrCString("2");
			//Reset the timer for next presses
			Timer_WriteCompareValue(0); 
		}
		else
		{
			//Data has not been collected - collect first value
			time1 = currentCount;
			//Let user know
			LCD_Position(1,0);
			LCD_PrCString("1");
		}
	}
	
	//Write the difference in times to the LCD
	LCD_Position(0,0);
	LCD_PrHexInt(time1 - time2); //Down count so 1-2
}
