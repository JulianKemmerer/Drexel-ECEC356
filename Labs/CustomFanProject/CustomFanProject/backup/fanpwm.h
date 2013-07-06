//*****************************************************************************
//*****************************************************************************
//  FILENAME: FanPWM.h
//   Version: 2.60, Updated on 2011/3/29 at 14:30:52
//  Generated by PSoC Designer 5.1.2110.0
//
//  DESCRIPTION: PWM8 User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2011. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef FanPWM_INCLUDE
#define FanPWM_INCLUDE

#include <m8c.h>

#pragma fastcall16 FanPWM_EnableInt
#pragma fastcall16 FanPWM_DisableInt
#pragma fastcall16 FanPWM_Start
#pragma fastcall16 FanPWM_Stop
#pragma fastcall16 FanPWM_bReadCounter              // Read  DR0
#pragma fastcall16 FanPWM_WritePeriod               // Write DR1
#pragma fastcall16 FanPWM_bReadPulseWidth           // Read  DR2
#pragma fastcall16 FanPWM_WritePulseWidth           // Write DR2

// The following symbols are deprecated.
// They may be omitted in future releases
//
#pragma fastcall16 bFanPWM_ReadCounter              // Read  DR0 (Deprecated)
#pragma fastcall16 bFanPWM_ReadPulseWidth           // Read  DR2 (Deprecated)


//-------------------------------------------------
// Prototypes of the FanPWM API.
//-------------------------------------------------

extern void FanPWM_EnableInt(void);                        // Proxy Class 1
extern void FanPWM_DisableInt(void);                       // Proxy Class 1
extern void FanPWM_Start(void);                            // Proxy Class 1
extern void FanPWM_Stop(void);                             // Proxy Class 1
extern BYTE FanPWM_bReadCounter(void);                     // Proxy Class 2
extern void FanPWM_WritePeriod(BYTE bPeriod);              // Proxy Class 1
extern BYTE FanPWM_bReadPulseWidth(void);                  // Proxy Class 1
extern void FanPWM_WritePulseWidth(BYTE bPulseWidth);      // Proxy Class 1

// The following functions are deprecated.
// They may be omitted in future releases
//
extern BYTE bFanPWM_ReadCounter(void);            // Deprecated
extern BYTE bFanPWM_ReadPulseWidth(void);         // Deprecated


//--------------------------------------------------
// Constants for FanPWM API's.
//--------------------------------------------------

#define FanPWM_CONTROL_REG_START_BIT           ( 0x01 )
#define FanPWM_INT_REG_ADDR                    ( 0x0e1 )
#define FanPWM_INT_MASK                        ( 0x01 )


//--------------------------------------------------
// Constants for FanPWM user defined values
//--------------------------------------------------

#define FanPWM_PERIOD                          ( 0xff )
#define FanPWM_PULSE_WIDTH                     ( 0x00 )


//-------------------------------------------------
// Register Addresses for FanPWM
//-------------------------------------------------

#pragma ioport  FanPWM_COUNTER_REG: 0x020                  //DR0 Count register
BYTE            FanPWM_COUNTER_REG;
#pragma ioport  FanPWM_PERIOD_REG:  0x021                  //DR1 Period register
BYTE            FanPWM_PERIOD_REG;
#pragma ioport  FanPWM_COMPARE_REG: 0x022                  //DR2 Compare register
BYTE            FanPWM_COMPARE_REG;
#pragma ioport  FanPWM_CONTROL_REG: 0x023                  //Control register
BYTE            FanPWM_CONTROL_REG;
#pragma ioport  FanPWM_FUNC_REG:    0x120                  //Function register
BYTE            FanPWM_FUNC_REG;
#pragma ioport  FanPWM_INPUT_REG:   0x121                  //Input register
BYTE            FanPWM_INPUT_REG;
#pragma ioport  FanPWM_OUTPUT_REG:  0x122                  //Output register
BYTE            FanPWM_OUTPUT_REG;
#pragma ioport  FanPWM_INT_REG:       0x0e1                //Interrupt Mask Register
BYTE            FanPWM_INT_REG;


//-------------------------------------------------
// FanPWM Macro 'Functions'
//-------------------------------------------------

#define FanPWM_Start_M \
   FanPWM_CONTROL_REG |=  FanPWM_CONTROL_REG_START_BIT

#define FanPWM_Stop_M  \
   FanPWM_CONTROL_REG &= ~FanPWM_CONTROL_REG_START_BIT

#define FanPWM_EnableInt_M   \
   M8C_EnableIntMask(FanPWM_INT_REG, FanPWM_INT_MASK)

#define FanPWM_DisableInt_M  \
   M8C_DisableIntMask(FanPWM_INT_REG, FanPWM_INT_MASK)

#endif
// end of file FanPWM.h
