Project:      output/Lab4C
Build Number: 0
Date:         Tue Jul 12 15:57:07 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1497 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 7 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   00A6 =    166. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01C6  LoadConfigTBL_Lab4C_Bank0
       021B  LoadConfigTBL_Lab4C_Bank1
       0246  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0246   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0246  __func_lit_start
       0248  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0248   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0248  LoadConfigTBL_Lab4C_Ordered
       034D  LoadConfigInit
       034D  _LoadConfigInit
       035D  _LoadConfig_Lab4C
       035D  LoadConfig_Lab4C
       03B8  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03B8   02FB =    763. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03B8  _LCD_PrCString
       03B8  LCD_PrCString
       03CA  LCD_HEX_STR
       03DA  _LCD_PrHexByte
       03DA  LCD_PrHexByte
       03ED  LCD_PrHexInt
       03ED  _LCD_PrHexInt
       03F4  _LCD_PrString
       03F4  LCD_PrString
       0406  _LCD_Write_Data
       0406  LCD_Write_Data
       0406  LCD_WriteData
       0406  _LCD_WriteData
       041A  LCD_Control
       041A  _LCD_Control
       04CA  _LCD_Start
       04CA  LCD_Init
       04CA  LCD_Start
       04CA  _LCD_Init
       0539  LCD_ROW_OFFSET
       053D  _LCD_Position
       053D  LCD_Position
       054D  LCD_Delay50uTimes
       054D  _LCD_Delay50uTimes
       0553  LCD_Delay50u_Table
       055B  _LCD_Delay50u
       055B  LCD_Delay50u
       056F  _LCD_DrawBG
       05A0  _LCD_DrawVBG
       05D4  _LCD_InitVBG
       05D4  LCD_InitVBG
       0605  LCD_BG_TYPE1
       060C  LCD_BG_TYPE2
       0613  _LCD_InitBG
       0613  LCD_InitBG
       0647  _FanPWM_ISR
       066D  _FanPWM_EnableInt
       066D  FanPWM_EnableInt
       0671  _FanPWM_DisableInt
       0671  FanPWM_DisableInt
       0675  FanPWM_Start
       0675  _FanPWM_Start
       0679  FanPWM_Stop
       0679  _FanPWM_Stop
       067D  _FanPWM_WritePeriod
       067D  FanPWM_WritePeriod
       0680  _FanPWM_WritePulseWidth
       0680  FanPWM_WritePulseWidth
       0683  _bFanPWM_ReadPulseWidth
       0683  _FanPWM_bReadPulseWidth
       0683  bFanPWM_ReadPulseWidth
       0683  FanPWM_bReadPulseWidth
       0686  FanPWM_bReadCounter
       0686  _bFanPWM_ReadCounter
       0686  _FanPWM_bReadCounter
       0686  bFanPWM_ReadCounter
       06B3  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   06B3   00C6 =    198. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       06B3  _main
       06B3  __text_start
       0779  __text_end
       0780  __xidata_end

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
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, fanpwmint.asm, fanpwm.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-BLab4C_RAM	allocated at: 0

