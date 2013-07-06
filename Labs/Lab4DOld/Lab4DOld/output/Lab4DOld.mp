Project:      output/Lab4DOld
Build Number: 0
Date:         Thu Jul 21 14:37:25 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 9% full. 2636 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 28 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   00B6 =    182. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01BE  LoadConfigTBL_Lab4DOld_Bank0
       021F  LoadConfigTBL_Lab4DOld_Bank1
       0256  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0256   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0256  __func_lit_start
       0258  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0258   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0258  LoadConfigTBL_Lab4DOld_Ordered
       035D  LoadConfigInit
       035D  _LoadConfigInit
       036D  LoadConfig_Lab4DOld
       036D  _LoadConfig_Lab4DOld
       03C8  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03C8   0265 =    613. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03C8  _TachTimer_ISR
       03CC  TachTimer_EnableInt
       03CC  _TachTimer_EnableInt
       03D0  _TachTimer_DisableInt
       03D0  TachTimer_DisableInt
       03D4  TachTimer_Start
       03D4  _TachTimer_Start
       03D8  TachTimer_Stop
       03D8  _TachTimer_Stop
       03DC  TachTimer_WritePeriod
       03DC  _TachTimer_WritePeriod
       03E2  TachTimer_WriteCompareValue
       03E2  _TachTimer_WriteCompareValue
       03E8  _TachTimer_wReadCompareValue
       03E8  TachTimer_wReadCompareValue
       03E8  wTachTimer_ReadCompareValue
       03E8  _wTachTimer_ReadCompareValue
       03EE  wTachTimer_ReadTimerSaveCV
       03EE  TachTimer_wReadTimerSaveCV
       03EE  _TachTimer_wReadTimerSaveCV
       03EE  wTachTimer_ReadCounter
       03EE  _wTachTimer_ReadCounter
       03EE  _wTachTimer_ReadTimerSaveCV
       0424  TachTimer_wReadTimer
       0424  wTachTimer_CaptureCounter
       0424  wTachTimer_ReadTimer
       0424  _wTachTimer_ReadTimer
       0424  _TachTimer_wReadTimer
       0424  _wTachTimer_CaptureCounter
       042C  LCD_PrCString
       042C  _LCD_PrCString
       043E  LCD_HEX_STR
       044E  _LCD_PrHexByte
       044E  LCD_PrHexByte
       0461  _LCD_PrHexInt
       0461  LCD_PrHexInt
       0468  LCD_PrString
       0468  _LCD_PrString
       047A  LCD_WriteData
       047A  _LCD_WriteData
       047A  LCD_Write_Data
       047A  _LCD_Write_Data
       048E  _LCD_Control
       048E  LCD_Control
       053E  _LCD_Start
       053E  _LCD_Init
       053E  LCD_Start
       053E  LCD_Init
       05AD  LCD_ROW_OFFSET
       05B1  LCD_Position
       05B1  _LCD_Position
       05C1  _LCD_Delay50uTimes
       05C1  LCD_Delay50uTimes
       05C7  LCD_Delay50u_Table
       05CF  LCD_Delay50u
       05CF  _LCD_Delay50u
       05E3  _FanPWM_ISR
       05E7  FanPWM_EnableInt
       05E7  _FanPWM_EnableInt
       05EB  _FanPWM_DisableInt
       05EB  FanPWM_DisableInt
       05EF  _FanPWM_Start
       05EF  FanPWM_Start
       05F3  FanPWM_Stop
       05F3  _FanPWM_Stop
       05F7  _FanPWM_WritePeriod
       05F7  FanPWM_WritePeriod
       05FA  FanPWM_WritePulseWidth
       05FA  _FanPWM_WritePulseWidth
       05FD  bFanPWM_ReadPulseWidth
       05FD  _bFanPWM_ReadPulseWidth
       05FD  _FanPWM_bReadPulseWidth
       05FD  FanPWM_bReadPulseWidth
       0600  _FanPWM_bReadCounter
       0600  bFanPWM_ReadCounter
       0600  _bFanPWM_ReadCounter
       0600  FanPWM_bReadCounter
       062D  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   062D   05BF =   1471. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       062D  __text_start
       062D  _main
       07D6  _ButtonDown
       08BC  _TachTimerCISR
       096D  _FanPWMCISR
       0BEC  __text_end
       0BF9  __xidata_end

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
               virtual_registers   0003   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rZ
       0004  __rY
       0005  __rX
       0006  __r11
       0007  __r10
       0008  __r9
       0009  __r8
       000A  __r7
       000B  __r6
       000C  __r5
       000D  __r4
       000E  __r3
       000F  __r2
       0010  __r1
       0011  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   000A =     10. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0012  _wFirstValue
       0014  _wControlState
       0016  _wLastValue
       0018  _wSpeedRPM
       001A  _bDataAvailable
       001B  _cNumCycles

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ tachtimerint.asm, tachtimer.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, fanpwmint.asm ]
[ fanpwm.asm, rZ.asm, rY.asm, rX.asm, r11.asm, r10.asm, r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm ]
[ r2.asm, r1.asm, r0.asm, divmod_32x32_32_util.asm, i_div32_block_util.asm, i_div32_not_util.asm ]
[ i_mulu8_block_util.asm, mul32_util.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-BLab4DOld_RAM	allocated at: 0

