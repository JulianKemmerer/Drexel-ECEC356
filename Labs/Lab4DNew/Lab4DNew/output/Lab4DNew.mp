Project:      output/Lab4DNew
Build Number: 0
Date:         Tue Jul 19 16:22:32 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1522 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 7 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   00BE =    190. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01C6  LoadConfigTBL_Lab4DNew_Bank0
       0227  LoadConfigTBL_Lab4DNew_Bank1
       025E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   025E   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       025E  __func_lit_start
       0260  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0260   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0260  LoadConfigTBL_Lab4DNew_Ordered
       0365  LoadConfigInit
       0365  _LoadConfigInit
       0375  _LoadConfig_Lab4DNew
       0375  LoadConfig_Lab4DNew
       03D0  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03D0   02FC =    764. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03D0  _TachTimer_ISR
       03D1  _LCD_PrCString
       03D1  LCD_PrCString
       03E3  LCD_HEX_STR
       03F3  _LCD_PrHexByte
       03F3  LCD_PrHexByte
       0406  LCD_PrHexInt
       0406  _LCD_PrHexInt
       040D  _LCD_PrString
       040D  LCD_PrString
       041F  _LCD_Write_Data
       041F  LCD_WriteData
       041F  LCD_Write_Data
       041F  _LCD_WriteData
       0433  _LCD_Control
       0433  LCD_Control
       04E3  LCD_Init
       04E3  _LCD_Start
       04E3  _LCD_Init
       04E3  LCD_Start
       0552  LCD_ROW_OFFSET
       0556  LCD_Position
       0556  _LCD_Position
       0566  _LCD_Delay50uTimes
       0566  LCD_Delay50uTimes
       056C  LCD_Delay50u_Table
       0574  _LCD_Delay50u
       0574  LCD_Delay50u
       0588  _LCD_DrawBG
       05B9  _LCD_DrawVBG
       05ED  LCD_InitVBG
       05ED  _LCD_InitVBG
       061E  LCD_BG_TYPE1
       0625  LCD_BG_TYPE2
       062C  _LCD_InitBG
       062C  LCD_InitBG
       0660  _FanPWM_ISR
       0686  _FanPWM_EnableInt
       0686  FanPWM_EnableInt
       068A  FanPWM_DisableInt
       068A  _FanPWM_DisableInt
       068E  _FanPWM_Start
       068E  FanPWM_Start
       0692  _FanPWM_Stop
       0692  FanPWM_Stop
       0696  FanPWM_WritePeriod
       0696  _FanPWM_WritePeriod
       0699  FanPWM_WritePulseWidth
       0699  _FanPWM_WritePulseWidth
       069C  _FanPWM_bReadPulseWidth
       069C  FanPWM_bReadPulseWidth
       069C  bFanPWM_ReadPulseWidth
       069C  _bFanPWM_ReadPulseWidth
       069F  _bFanPWM_ReadCounter
       069F  _FanPWM_bReadCounter
       069F  bFanPWM_ReadCounter
       069F  FanPWM_bReadCounter
       06CC  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06CC   00C6 =    198. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       06CC  _main
       06CC  __text_start
       0792  __text_end
       0799  __xidata_end

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
               virtual_registers   0003   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __r1
       0004  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0005  _wControlState

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ tachtimerint.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, fanpwmint.asm, fanpwm.asm, r1.asm ]
[ r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-BLab4DNew_RAM	allocated at: 0

