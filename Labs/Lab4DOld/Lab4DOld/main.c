//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned int wControlState = 1000;
extern unsigned int wFirstValue = 0;
extern unsigned int wLastValue = 0;
extern signed char cNumCycles = 0;
extern unsigned char bDataAvailable = 0;
extern unsigned int wSpeedRPM = 0;


void main()
{
	//Iniitalize pulsewidth
   FanPWM_WritePulseWidth(255);
   
   //Start Fan PWM
   FanPWM_Start();
   
   //Enable FanPWM interrupt
   FanPWM_EnableInt();
   
   //Enable global interrupts
   M8C_EnableGInt;
   
   //Start tach timer
   TachTimer_Start();
   
   //Enable Tach Timer interrupts
   TachTimer_EnableInt();
   
   //Start LCD
   LCD_Start();
   
   //Enable GPIO interrupts
   INT_MSK0 |= 0b00100000;
	
	//Initialize display
	LCD_Init();
	LCD_Position(0,0);
	LCD_PrCString("Pulse Width: ");
	LCD_Position(0,13);
   	LCD_PrHexByte(FanPWM_bReadPulseWidth());
   
   while(1)//control loop
   {
		if(bDataAvailable == 1)//if data is available
		{
			//Clear it
			bDataAvailable = 0;
			//Calculate fan speed and write RPM and num cycles to lCD
			wSpeedRPM = ( (  (60/4) * 3000000 * cNumCycles     )+   ((wFirstValue - wLastValue)/2)    )/(wFirstValue - wLastValue);
			
			//Write to LCD
			LCD_Init();
			LCD_Position(0,0);
			LCD_PrCString("RPM: ");//Begin writing at 0,5
			LCD_Position(0,5);
			LCD_PrHexInt(wSpeedRPM);
			
			LCD_Position(1,0);
   			LCD_PrCString("#Cycles: ");//Begin writing at 1,9
			LCD_Position(1,9);
			LCD_PrHexByte(cNumCycles);
		}
		
   }//end control loop
}

#pragma interrupt_handler ButtonDown
void ButtonDown()
{
	//Not needed
	//Wait for sleep timer
	//while(INT_CLR0 & 0b01000000 == 0){}//Wait for posted sleep timer interrupt
	//Clear sleep timer interrupt
	//INT_CLR0 &= ~0b01000000;


	//Read switch input 3 times (debounce)
	if(PRT1DR & 0b00000001 == 0b00000001) //First read
	{
		if(PRT1DR & 0b00000001 == 0b00000001) //Second read
		{
			if(PRT1DR & 0b00000001 == 0b00000001) //Third read - Button has been pressed
			{
				while(PRT1DR & 0b00000001 == 0b00000001){}//Wait for button to be released
				//Decrement pulse width
				FanPWM_WritePulseWidth(FanPWM_bReadPulseWidth() - 1);
				//Update display
				LCD_Init();
				LCD_Position(0,0);
				LCD_PrCString("Pulse Width: ");
				LCD_Position(0,13);
				LCD_PrHexByte(FanPWM_bReadPulseWidth());
			}
		}
	}
}


#pragma interrupt_handler TachTimerCISR
void TachTimerCISR()
{
	if(cNumCycles == 0)
	{
		wFirstValue = TachTimer_wReadTimerSaveCV();
	}
	else
	{
		wLastValue = TachTimer_wReadTimerSaveCV();
	}
}

#pragma interrupt_handler FanPWMCISR
void FanPWMCISR() //WHY DOES THIS NOT WORK!!!!!!!?????
{
	/* Old Assembly Code
	
	RDIxLT0: equ 0xb3
			dec [_wControlState + 1] 	;Step 1
			sbb [_wControlState],0
			jnz MoreThan255
			cmp [_wControlState + 1], 20
			jnz Not20
			
		State20:						;Step 3
			mov reg[PRT1DR], 0x40
			or reg[RDIxLT0], 0x0f
			reti
			
		Not20:
			cmp[_wControlState],0
			jnz NotZero
		
		State0:							;Step 7
			mov reg[PRT1DR] , 0x00
			and reg[RDIxLT0] , 0xf3
			mov [_wControlState] , 3
			mov [_wControlState + 1] , 232
			reti
			
		NotZero:
		MoreThan255:
		
	*/
	

	//New C Code///////////////////////////////////
	//RDIxLT0: equ 0xb3
	//PRT1DR = 0x004 (from m8c.inc file)
	wControlState = wControlState - 1; // Decrement wControlState
	if(wControlState >255)
	{//MoreThan255
		//Do nothing
	}
	else
	{
		if(wControlState ==20)
		{//State20 - Start fan override
			asm("mov reg[0x004], 0x40"); //mov reg[PRT1DR], 0x40 - set Fanoverride out high
			asm("or reg[0xb3], 0x0f"); //or reg[RDIxLT0], 0x0f - force LUT open high
		}
		else if(wControlState > 20)
		{
			//Do nothing
		}
		else if(wControlState ==19)//Step 4
		{
			cNumCycles = -1;
			//Clear TachTimer pending interrupts - INT-CLR1 bit 4 and 5 to zero
			INT_CLR1 &= ~0b00110000;
			//Enable tach timer interrupts
			TachTimer_EnableInt(); 
		}
		else if( wControlState >= 2 && wControlState <= 18) //Step 5
		{
			//Do nothing
		}
		else if(wControlState ==1) //Step 6
		{
			//Clear TachTimer pending interrupts - INT-CLR1 bit 4 and 5 to zero
			INT_CLR1 &= ~0b00110000;
			//Disable tach timer interrupts
			TachTimer_DisableInt();
			bDataAvailable = 1;
		}
		else
		{//Not20
			if(wControlState == 0)
			{//State0 - End fan override
				asm("mov reg[0x004] , 0x00"); //mov reg[PRT1DR] , 0x00 - set fanoverride low
				asm("and reg[0xb3] , 0xf3"); //and reg[RDIxLT0] , 0xf3 - force LUT back to normal
				asm("mov [_wControlState] , 3"); //wControlState =1000
				asm("mov [_wControlState + 1] , 232");
			}
			else
			{//NotZero
				//Do nothing
			}
		}
	}

}










/*Old Control Code
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
		*///End old control code
		
		
//Needed?
/*
#pragma interrupt_handler FanPWMCISR
void FanPWMCISR()
{
}
*/