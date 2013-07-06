//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

//Julian Kemmerer
//Quiz 2
//ECEC 356
//PWM is malfunctioning... not processing interrupt

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern char ten_ms_counter = 0;
extern char bPulseWidth = 0;

void main(void)
{
	M8C_EnableGInt; // Uncomment this line to enable Global Interrupts
	CPU_F |= 0b00000001;
	INT_MSK1 |= 0b00000001;
	//Insert your main routine code here.
	
	//Enable PWM
	PWM_Start();
	PWM_EnableInt();
	
	
	//Enable LCD for debugging
	LCD_Start();
	LCD_Init();
	
	
	while(1)//Control loop
	{
		LCD_Position(0,0);
		LCD_PrHexByte(PWM_bReadPulseWidth());
		LCD_Position(1,0);
		LCD_PrHexByte(ten_ms_counter);
		LCD_Position(0,6);
		LCD_PrHexByte(PWM_bReadCounter()); 
	}//End Control Loop
}

#pragma interrupt_handler PWM10ms
void PWM10ms(void)
{
	//Clear the pending interrupt
	INT_CLR1 &= ~0b00000001;

	//Increment count between 0 and 4 (5 resets to 0)
	ten_ms_counter = ten_ms_counter + 1;
	if(ten_ms_counter>=5)
	{
		ten_ms_counter = 0;
	}
	
	//Check state of count
	if(ten_ms_counter <= 0)
	{
		//Low output (0% duty cycle)
		bPulseWidth = (char)0;
	}
	else if(ten_ms_counter == 1)
	{
		//High output (100% duty cycle)
		bPulseWidth = (char)255;
	}
	else if(ten_ms_counter == 2)
	{
		//Low
		bPulseWidth = (char)0;
	}
	else if(ten_ms_counter >= 3)
	{
		//High
		bPulseWidth = (char)255;
	}
	else
	{
		//Error
		LCD_Position(0,0);
		LCD_PrCString("Error!");
	}
	PWM_WritePulseWidth(bPulseWidth);
	

	
}