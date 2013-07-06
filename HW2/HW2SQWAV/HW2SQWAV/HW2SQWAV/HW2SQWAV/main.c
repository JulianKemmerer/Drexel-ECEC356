//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char bDataAvailable = 0;
extern unsigned int time1 = 0;
extern unsigned int time2 = 0;
extern unsigned int delT = 0;

void SleepTimerISR(void);
void SignalHigh(void);


void main(void)
{
	//Should have a full count at .5MHZ (slowest freq)
	//Go slightly lower clock to ensure that overflow does not occur
	//Full count is 2^16 -1 = 65535
	//Full period should also be 65535
	//.5MHZ = 0.000002 seconds/cycle
	//Count 65535 in 0.000002 seconds
	//65535 counts/0.000002 seconds is much larger than fastest clock speed
	//Using fastest clock speed as best we can do
	//Clock = 2*SysCLK = 48MHZ                              
	//Time measured in 1/(48*10^6) increments = 2.0833e-8 = 20.833ns
	//Minimum signal high to high = 65535 * 20.833ns = 732.44Hz
	//ElapsedTime = (ClockFreq^-1)*(PeriodValue - CounterValue)
	//Convert from Freq to counts: 1 / (Freq * 0.000000020833)
	
	
	//Results
	//Reading is always around E600, which corresponds to ~800hz
	
	//Enable global interrupts
   	M8C_EnableGInt;
	
	//Start Timer
	Timer_Start();
	
	//Enable Timer interrupts
	Timer_EnableInt();
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	//Display time labels
	LCD_Init();
	LCD_Position(0,0);
	LCD_PrCString("DelT: ");
	
	
	
}

#pragma interrupt_handler SignalHigh
void SignalHigh(void) //Interrupt for timer
{
	//Clear TachTimer pending interrupts
	INT_CLR1 &= ~0b00000011;

	//Disable timer interrupts temporarily
	Timer_DisableInt();
	
	//ElapsedTime = (ClockFreq^-1)*(PeriodValue - CounterValue)
	//LCD_Position(0,0);
	//LCD_PrCString("SIGNAL");
	
	if(bDataAvailable == 1)//Atleast 1 data point has been captured
	{
		//Swap the first time for the second
		time2 = time1;
		
		//Record a new time1
		time1 = Timer_wReadTimerSaveCV();
		
		//Calculate the time difference
		delT = time1 - time2;
		//Print the times
		//Display time labels
		LCD_Init();
		LCD_Position(0,0);
		LCD_PrCString("DelT: ");
		//Display time difference
		LCD_Position(0,6);
		LCD_PrHexInt(delT);

	}
	else
	{
		//Record a new time1
		time1 = Timer_wReadTimerSaveCV();
		
		//Signal that atleast 1 data point has been captured
		bDataAvailable = 1;
		
		//Display times
		//LCD_Position(0,4);
		//LCD_PrHexInt(time1);
		//LCD_Position(1,4);
		//LCD_PrHexInt(time2);
	}
	
	//Enable Timer interrupts again
	Timer_EnableInt();
}


#pragma interrupt_handler SleepTimerISR
void SleepTimerISR(void)
{
	
}
