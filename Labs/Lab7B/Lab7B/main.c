//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

//ACAP Value
extern char bACap = 0;
void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	
	
	
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
			//Update controlreg to new value
			//Increment Acap value
			bACap++;
			//Clear first 3 bits
			bACap &= 0b00011111;
			//Write to control reg
			SCDAC_cr0 = bACap;
			//Restore old values
			SCDAC_cr0 |= 0b11000000;
			SCDAC_cr0 &= ~0b00100000;
			
			//Print bACap to LCD
			LCD_Position(0,0);
			LCD_PrHexByte(bACap);
			
			
		}
		
	}
}
