//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------
//Julian Kemmerer
//Exam 1 Problem 1B
//ECEC 356 Summer 11

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char value1 = 0; //0b0000 0000 where last four bits are 0, PRT0DR[3],PRT0DR[2], PRT0DR[1]
extern unsigned char value2 = 0;
extern unsigned char input = 0;
extern unsigned char sum = 0;

void main(void)
{
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	//Enable interrupts for GPI0
	INT_MSK0 |= 0b00100000;
	//SW1 connected to P1[0]
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	
	while(1)//Control loop
	{
		input = PRT0DR;
	
		//Collect PRT0DR[3] value
		if( (input & 0b00001000) == 0)
		{
			//PRT0DR[3] is low
			value1 &= ~0b00000100;
		}
		else
		{
			//PRT0DR[3] is high
			value1 |= 0b00000100;
		}
		
		//Collect PRT0DR[2] value
		if( (input & 0b00000100) == 0)
		{
			//PRT0DR[2] is low
			value1 &= ~0b00000010;
		}
		else
		{
			//PRT0DR[2] is high
			value1 |= 0b00000010;
		}
		
		//Collect PRT0DR[1] value
		if( (input & 0b00000010) == 0)
		{
			//PRT0DR[1] is low
			value1 &= ~0b00000001;
		}
		else
		{
			//PRT0DR[1] is high
			value1 |= 0b00000001;
		}
		
		//Collect PRT0DR[7] value
		if( (input & 0b10000000) == 0)
		{
			//PRT0DR[7] is low
			value2 &= ~0b00001000;
		}
		else
		{
			//PRT0DR[7] is high
			value2 |= 0b00001000;
		}
		
		//Collect PRT0DR[6] value
		if( (input & 0b01000000) == 0)
		{
			//PRT0DR[6] is low
			value2 &= ~0b00000100;
		}
		else
		{
			//PRT0DR[6] is high
			value2 |= 0b00000100;
		}
		
		//Collect PRT0DR[5] value
		if( (input & 0b00100000) == 0)
		{
			//PRT0DR[5] is low
			value2 &= ~0b00000010;
		}
		else
		{
			//PRT0DR[5] is high
			value2 |= 0b00000010;
		}
		
		//Collect PRT0DR[4] value
		if( (input & 0b00010000) == 0)
		{
			//PRT0DR[4] is low
			value2 &= ~0b00000001;
		}
		else
		{
			//PRT0DR[4] is high
			value2 |= 0b00000001;
		}

		//Print to LCD
		LCD_Position(0,0);
		LCD_PrHexByte(value1);
		LCD_Position(0,3);
		LCD_PrHexByte(value2);
		
		//Check for switch press 3 times for deboucne
		if( (PRT1DR & 0b00000001) == 0b00000001 )//1
		{
			if( (PRT1DR & 0b00000001) == 0b00000001 )//2
			{
				if( (PRT1DR & 0b00000001) == 0b00000001 )//3
				{
					while( (PRT1DR & 0b00000001) == 0b00000001)//Wait for release
					{}
					
					//Print to LCD
					LCD_Position(1,0);
					sum = value1 + value2;
					LCD_PrHexByte( sum );
				}
			}
		}
		
		
		
	}//End control loop
}
