Project:      output/Lab12A
Build Number: 0
Date:         Thu Jul 28 13:22:00 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 9% full. 2716 out of 32768 bytes used (does not include absolute areas).
  RAM 4% full. 57 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0098 =    152. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_Lab12A_Bank0
       0201  LoadConfigTBL_Lab12A_Bank1
       0238  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0238   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0238  __func_lit_start
       023A  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   023A   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       023A  LoadConfigTBL_Lab12A_Ordered
       033F  _LoadConfigInit
       033F  LoadConfigInit
       034F  _LoadConfig_Lab12A
       034F  LoadConfig_Lab12A
       03AA  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03AA   038D =    909. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03AA  _TachTimer_ISR
       03C2  _TachTimer_EnableInt
       03C2  TachTimer_EnableInt
       03C6  _TachTimer_DisableInt
       03C6  TachTimer_DisableInt
       03CA  _TachTimer_Start
       03CA  TachTimer_Start
       03CE  _TachTimer_Stop
       03CE  TachTimer_Stop
       03D2  _TachTimer_WritePeriod
       03D2  TachTimer_WritePeriod
       03D8  _TachTimer_WriteCompareValue
       03D8  TachTimer_WriteCompareValue
       03DE  _wTachTimer_ReadCompareValue
       03DE  TachTimer_wReadCompareValue
       03DE  wTachTimer_ReadCompareValue
       03DE  _TachTimer_wReadCompareValue
       03E4  wTachTimer_ReadCounter
       03E4  _wTachTimer_ReadTimerSaveCV
       03E4  _wTachTimer_ReadCounter
       03E4  wTachTimer_ReadTimerSaveCV
       03E4  _TachTimer_wReadTimerSaveCV
       03E4  TachTimer_wReadTimerSaveCV
       041A  _wTachTimer_CaptureCounter
       041A  TachTimer_wReadTimer
       041A  wTachTimer_ReadTimer
       041A  wTachTimer_CaptureCounter
       041A  _wTachTimer_ReadTimer
       041A  _TachTimer_wReadTimer
       0422  _LCD_PrCString
       0422  LCD_PrCString
       0434  LCD_HEX_STR
       0444  _LCD_PrHexByte
       0444  LCD_PrHexByte
       0457  LCD_PrHexInt
       0457  _LCD_PrHexInt
       045E  _LCD_PrString
       045E  LCD_PrString
       0470  LCD_WriteData
       0470  LCD_Write_Data
       0470  _LCD_WriteData
       0470  _LCD_Write_Data
       0484  LCD_Control
       0484  _LCD_Control
       0534  _LCD_Start
       0534  LCD_Start
       0534  _LCD_Init
       0534  LCD_Init
       05A3  LCD_ROW_OFFSET
       05A7  _LCD_Position
       05A7  LCD_Position
       05B7  _LCD_Delay50uTimes
       05B7  LCD_Delay50uTimes
       05BD  LCD_Delay50u_Table
       05C5  LCD_Delay50u
       05C5  _LCD_Delay50u
       05D9  _LCD_DrawBG
       060A  _LCD_DrawVBG
       063E  _LCD_InitVBG
       063E  LCD_InitVBG
       066F  LCD_BG_TYPE1
       0676  LCD_BG_TYPE2
       067D  LCD_InitBG
       067D  _LCD_InitBG
       06B1  _FanPWM_ISR
       06F1  _FanPWM_EnableInt
       06F1  FanPWM_EnableInt
       06F5  _FanPWM_DisableInt
       06F5  FanPWM_DisableInt
       06F9  FanPWM_Start
       06F9  _FanPWM_Start
       06FD  FanPWM_Stop
       06FD  _FanPWM_Stop
       0701  FanPWM_WritePeriod
       0701  _FanPWM_WritePeriod
       0704  _FanPWM_WritePulseWidth
       0704  FanPWM_WritePulseWidth
       0707  _bFanPWM_ReadPulseWidth
       0707  _FanPWM_bReadPulseWidth
       0707  bFanPWM_ReadPulseWidth
       0707  FanPWM_bReadPulseWidth
       070A  FanPWM_bReadCounter
       070A  _bFanPWM_ReadCounter
       070A  _FanPWM_bReadCounter
       070A  bFanPWM_ReadCounter
       0737  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0737   0505 =   1285. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0737  _main
       0737  __text_start
       09A2  _cIntegratorControl
       0C3C  __text_end
       0C6C  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0143 =    323. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0140  bGetPowerSetting
       0140  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _Port_2_Data_SHADE
       0000  NO_SHADOW
       0000  _NO_SHADOW
       0000  Port_2_Data_SHADE
       0001  Port_2_DriveMode_0_SHADE
       0001  _Port_2_DriveMode_0_SHADE
       0002  Port_2_DriveMode_1_SHADE
       0002  _Port_2_DriveMode_1_SHADE

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   001B   000B =     11. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001B  __rZ
       001C  __rY
       001D  __rX
       001E  __r7
       001F  __r6
       0020  __r5
       0021  __r4
       0022  __r3
       0023  __r2
       0024  __r1
       0025  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   002B =     43. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0003  _wSetPointTable
       0026  _lIntegrator
       002A  _wFirstValue
       002C  _wControlState
       002E  _wIntGainValue
       0030  _wLastValue
       0032  _wSpeedRPM
       0034  _iError
       0036  _cNumCycles
       0037  _bDataAvailable
       0038  _bSetPointCount

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ tachtimerint.asm, tachtimer.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, fanpwmint.asm ]
[ fanpwm.asm, rZ.asm, rY.asm, rX.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmod_32x32_32_util.asm ]
[ i_div32_block_util.asm, i_div32_not_util.asm, i_mulu8_block_util.asm, mul32_util.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x1b
-BLab12A_RAM	allocated at: 0

