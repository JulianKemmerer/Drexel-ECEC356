//Julian Kemmerer
//ECEC 356
//Summer 11
//Quiz 1

//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned char state = 1;
extern unsigned char seconds = 0;
extern unsigned char stateDelay = 6;
extern unsigned char day = 12;
extern unsigned char month = 7;
extern unsigned char year = 11;
extern unsigned char blinkState = 1; //1 is on, 0 is off

void updateLCD();

void main(void)
{
	M8C_EnableGInt ; // Uncomment this line to enable Global Interrupts
	
	//Start LCD
	LCD_Start();
	LCD_Init();
	
	//Allow interrupts from GPIO and Sleep
	INT_MSK0 |= 0b01100000;
	
	while(1)//Control loop
	{		
	}//End control loop
}


#pragma interrupt_handler OneSecond
void OneSecond()
{
	//Increase count
	seconds++;
	
	//Manage blinking - blink every second
	if(blinkState == 1)
	{
		blinkState = 0;
	}
	else
	{
		blinkState = 1;
	}
	
	//Handle changing of states
	if(seconds >= stateDelay)
	{
		//Move to next state
		if(state == 4)
		{
			state = 1;
		}
		else
		{
			state++;
		}
		
		//Reset second counter
		seconds = 0;
	}
	
	//Update LCD every second for blinking
	updateLCD();
}

#pragma interrupt_handler ButtonPressed
void ButtonPressed()
{//Normally you would check to see what pin the GPIO interrupt is coming from but there are no other GPIO devices
	if(state ==1)//State 1
	{
		//Reset calendar
		day = 12;
		month = 7;
		year = 11;
		//Update LCD
		updateLCD();
	}
	else if(state ==2)//State 2
	{
		if(month >= 12)
		{
			month = 1;
		}
		else
		{
			month++;
		}
		updateLCD();
	}
	else if(state ==3)//State 3
	{
		if( day >= 30)
		{
			day = 1;
		}
		else
		{
			day++;
		}
		updateLCD();
	}
	else if(state ==4)//State 4
	{
		if(year >=99)
		{
			year = 0;
		}
		else
		{
			year++;
		}
		updateLCD();
	}
}

void updateLCD()
{
	//Clear LCD
	LCD_Init();
	
	//Print month
	if(blinkState == 0 && state == 2)
	{
		//Do not print
	}
	else
	{
		//Print month
		LCD_Position(0,0);
		LCD_PrHexByte(month);
	}
	LCD_Position(0,2);
	LCD_PrCString("/");
	
	//Print day
	if(blinkState == 0 && state == 3)
	{
		//Do not print
	}
	else
	{
		//Print day
		LCD_Position(0,3);
		LCD_PrHexByte(day);
	}
	LCD_Position(0,5);
	LCD_PrCString("/");
	
	//Print year
	if(blinkState == 0 && state == 4)
	{
		//Do not print
	}
	else
	{
		//Print year
		LCD_Position(0,6);
		LCD_PrHexByte(year);
	}
}
