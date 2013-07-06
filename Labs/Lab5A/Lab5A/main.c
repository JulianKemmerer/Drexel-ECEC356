//----------------------------------------------------------------------------
// C main line
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

extern unsigned int wControlState=1000;
extern unsigned int wFirstValue=0;
extern unsigned int wLastValue=0;
extern signed char cNumCycles=-1;
extern unsigned char bDataAvailable=0;
extern unsigned int wSpeedRPM=0;
extern signed int iError = 0;
extern unsigned int wIntGainValue = 0;
extern signed long lIntegrator = 0;//? 
extern int wSetPointTable[] = {2000,3000,4000,5000,6000,7000,8000,7000,6000,5000,4000,3000}; //max RPM appears to be 5000?
extern unsigned char bSetPointCount = 1; //Start at 1 because slow RPM readings are inconsistant and difficult to obtain
//Prototypes
unsigned char cIntegratorControl(int iError);


/*LCD Layout

bSetPointCount(Set RPM)                                                Current Fan Pulse Width         

wRPMSpeed (Current RPM)								                    Calculated Pulse Width

*/



void main()
{
	//Initilize
	wControlState = 1000;
	cNumCycles=-1;
	bSetPointCount = 1;
	bDataAvailable = 0;
	wIntGainValue = 1000;
	lIntegrator = 128*65536;
	FanPWM_WritePulseWidth(128);
	FanPWM_Start();
	FanPWM_EnableInt();
	TachTimer_Start();
	LCD_Start();                    // Initialize LCD hardware  
	LCD_Init();
	LCD_Position(0,0);LCD_PrHexInt(wSetPointTable[bSetPointCount]);
	M8C_EnableGInt;

	while(1)
	{
		//Display pulse width for debug
		LCD_Position(0,14);LCD_PrHexByte(FanPWM_bReadPulseWidth());
		
		if( (INT_CLR0 & 0b01000000) == 0b01000000)//If sleep timer interrupt is pending
		{
			//Clear the pending interrupt
			INT_CLR0 &= ~0b01000000;
			
			//If button has been pressed
			//Read switch input 3 times (debounce)
			if(PRT1DR & 0b00000001 == 0b00000001) //First read
			{
				if(PRT1DR & 0b00000001 == 0b00000001) //Second read
				{
					if(PRT1DR & 0b00000001 == 0b00000001) //Third read - Button has been pressed
					{
						//Wait for release
						while(PRT1DR & 0b00000001 == 0b00000001){}//Do nothing
						//Increment bSetPointCount (index for the array)
						bSetPointCount++;
						//Keep set point count in range
						if(bSetPointCount >11)
						{
							bSetPointCount = 0;
						}
						//Find out what the RPM for this count (index) is and print it
						LCD_Position(0,0);LCD_PrHexInt(wSetPointTable[bSetPointCount]);
					}
				}
			
			}
		}
		
		//If bDataAvailable flag is set					
		if(bDataAvailable==1)
		{
			//Clear bDataAvailable
			bDataAvailable=0;
			//Calculate fan speed
			wSpeedRPM=90000000*cNumCycles/(wFirstValue-wLastValue)+1;	 // 1/2
			//Display speed on lower left of LCD
			LCD_Position(1,0);LCD_PrHexInt(wSpeedRPM);
			//Substract speed from set point array value to determine error
			iError = wSetPointTable[bSetPointCount] - wSpeedRPM;
			//Use error to determine new duty cycle (pulse width, right?)
			FanPWM_WritePulseWidth( cIntegratorControl(iError) );	
		}
		

	}

}

unsigned char cIntegratorControl(int iError)
{
	lIntegrator += (((long)wIntGainValue)*((long)iError));
	if(lIntegrator <0)
	{
		lIntegrator = 0;
	}
	if(lIntegrator >16777215)
	{
		lIntegrator = 16777215;
	}
	LCD_Position(1,14);
	LCD_PrHexByte((unsigned char)(lIntegrator >>16));

	return ((unsigned char)(lIntegrator >>16));

}
