//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

//ACAP Value
extern char value = 0;
void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	
	//Start DAC
	DAC6_Start(DAC6_FULLPOWER);
	
	
	
	//Control loop
	while(1)
	{
		//Wait for sleep timer interrupt to be posted
		while( (INT_CLR0 & 0b01000000) == 0)
		{
			//Do nothing
		}
		//Clear the sleep timer interupt
		INT_CLR0 &= ~0b01000000;
		
		//Check if the button has been pressed
		if( (PRT1DR & 0b00000001) == 0b00000001)
		{
			//Button pressed
			//Wait for release
			while((PRT1DR & 0b00000001) == 0b00000001){}
			//Values can go from 0 to 62
			value++;
			if(value>62)
			{
				value=0;
			}
			
			
			//Print bACap to LCD
			LCD_Position(0,0);
			LCD_PrHexByte(value);
			
			//Write to DAC
			DAC6_WriteStall(value);
			
			
		}
		
	}
}
