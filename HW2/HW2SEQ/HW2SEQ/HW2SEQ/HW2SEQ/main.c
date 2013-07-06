//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char sequence = 0b00000000;

void main(void)
{
	//Note: Button is on P1[0] and sequence in is on P0[0]

	//Enable global interrupts
	M8C_EnableGInt;
	//CPU_F |= 0b00000001;
	
	//Enable interrupts for GPIO (switch)
	INT_MSK0 |= 0b00100000;
	
	//Start LCD for debug
	LCD_Start();
	LCD_Init();
	LCD_Position(0,0);
	LCD_PrCString("Start...");
	
	while(1)
	{
	}
}

#pragma interrupt_handler ButtonDown
void ButtonDown()
{
	//Debounce by reading three times
	if( (PRT1DR & 0b00000001) == 0b00000001) //1
	{
		if( (PRT1DR & 0b00000001) == 0b00000001) //2
		{
			if( (PRT1DR & 0b00000001) == 0b00000001) //3 Button is really down
			{
				//LCD_Position(0,0);
				//LCD_PrCString("Down...      ");
			
				//Wait for release
				while( (PRT1DR & 0b00000001) == 0b00000001){}
				
				//Record the state of P0[0] by shifting it into the sequence
				//Shift the sequence by one bit
				sequence <<= 1;
				//Read in the current state P0[0]
				if( (PRT0DR & 0b00000001) == 0b00000001)
				{
					//Bit entered was 1
					sequence |= 0b00000001;
					LCD_Position(1,0);
					LCD_PrCString("1");
				}
				else
				{
					//Bit entered was 0
					sequence &= ~0b00000001;
					LCD_Position(1,0);
					LCD_PrCString("0");
				}
			}
		}
	}
	
	
	//If sequnce is correct
	if( (sequence & 0b00001111) == 0x0D)
	{
		//Let user known
		LCD_Position(0,0);
		LCD_PrCString("Correct!     ");
		//LCD_Position(1,0);
		//LCD_PrHexByte(sequence & 0b00001111);
	}
	else
	{
		LCD_Position(0,0);
		LCD_PrCString("Incorrect!    ");
		//LCD_Position(1,0);
		//LCD_PrHexByte(sequence & 0b00001111);
	}
	
}
