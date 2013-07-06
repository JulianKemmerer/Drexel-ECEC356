//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

//Julian Kemmerer
//Exam 1 Problem 1A
//ECEC 356 Summer 11

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char value = 0;
extern unsigned char mask = 0;

void main(void)
{
	// M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	// Insert your main routine code here.
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	
	value = 0; //0b0000 0000 where last four bits are 0, PRT0DR[3],PRT0DR[2], PRT0DR[1]
	
	while(1)//Control loop
	{
		mask = PRT0DR;
	
		//Collect PRT0DR[3] value
		if( (mask & 0b00001000) == 0)
		{
			//PRT0DR[3] is low
			value &= ~0b00000100;
		}
		else
		{
			//PRT0DR[3] is high
			value |= 0b00000100;
		}
		
		//Collect PRT0DR[2] value
		if( (mask & 0b00000100) == 0)
		{
			//PRT0DR[2] is low
			value &= ~0b00000010;
		}
		else
		{
			//PRT0DR[2] is high
			value |= 0b00000010;
		}
		
		//Collect PRT0DR[1] value
		if( (mask & 0b00000010) == 0)
		{
			//PRT0DR[1] is low
			value &= ~0b00000001;
		}
		else
		{
			//PRT0DR[1] is high
			value |= 0b00000001;
		}
		
		//Print to LCD
		LCD_Position(0,0);
		LCD_PrHexByte(value);
		
	}//End control loop
	

}
