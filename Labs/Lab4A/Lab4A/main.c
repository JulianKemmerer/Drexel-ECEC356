//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main()
{
   //Start LCD
   LCD_Start();
   //Init LCD
   LCD_Init();
   
   //Iniitalize pulsewidth
   FanPWM_WritePulseWidth(255);
   //Write label to LCD
   LCD_Position(0,0);
   LCD_PrCString("Pulse Width: ");//Begin writing at 0,13
   LCD_Position(0,13);
   LCD_PrHexByte(FanPWM_bReadPulseWidth());
   
   //Start Fan PWM
   FanPWM_Start();
   
   while(1)//control loop
   {
   		//Wait for sleep timer
		while(INT_CLR0 & 0b01000000 == 0){}//Wait for posted sleep timer interrupt
		//Clear sleep timer interrupt
		INT_CLR0 &= ~0b01000000;
		
		//Read switch input 3 times (debounce)
		if(PRT1DR & 0b00000001 == 0b00000001) //First read
		{
			if(PRT1DR & 0b00000001 == 0b00000001) //Second read
			{
				if(PRT1DR & 0b00000001 == 0b00000001) //Third read - Button has been pressed
				{
					LCD_Position(1,0);
   					LCD_PrCString("Waitiing...");
					while(PRT1DR & 0b00000001 == 0b00000001){}//Wait for button to be released
					LCD_Position(1,0);
   					LCD_PrCString("           ");
					
					
					//Decrement pulse width
					FanPWM_WritePulseWidth(FanPWM_bReadPulseWidth() - 1);
					//Update display
					LCD_Position(0,13);
  					LCD_PrHexByte(FanPWM_bReadPulseWidth());
				}
			}
		
		}
		
		
   }//end control loop
   
   
   
   
}
