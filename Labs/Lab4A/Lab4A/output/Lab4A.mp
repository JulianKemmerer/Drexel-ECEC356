Project:      output/Lab4A
Build Number: 0
Date:         Thu Aug  4 15:06:33 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1455 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 5 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   00A6 =    166. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01C6  LoadConfigTBL_lab4a_Bank0
       021B  LoadConfigTBL_lab4a_Bank1
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
       0248  LoadConfigTBL_lab4a_Ordered
       034D  _LoadConfigInit
       034D  LoadConfigInit
       035D  _LoadConfig_lab4a
       035D  LoadConfig_lab4a
       03B8  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03B8   02D6 =    726. bytes (rel,con,rom)

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
       0648  _FanPWM_EnableInt
       0648  FanPWM_EnableInt
       064C  _FanPWM_DisableInt
       064C  FanPWM_DisableInt
       0650  FanPWM_Start
       0650  _FanPWM_Start
       0654  FanPWM_Stop
       0654  _FanPWM_Stop
       0658  _FanPWM_WritePeriod
       0658  FanPWM_WritePeriod
       065B  _FanPWM_WritePulseWidth
       065B  FanPWM_WritePulseWidth
       065E  _bFanPWM_ReadPulseWidth
       065E  _FanPWM_bReadPulseWidth
       065E  bFanPWM_ReadPulseWidth
       065E  FanPWM_bReadPulseWidth
       0661  FanPWM_bReadCounter
       0661  _bFanPWM_ReadCounter
       0661  _FanPWM_bReadCounter
       0661  bFanPWM_ReadCounter
       068E  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   068E   00C1 =    193. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       068E  _main
       068E  __text_start
       074F  __text_end
       0751  __xidata_end

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

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, fanpwmint.asm, fanpwm.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Blab4a_RAM	allocated at: 0

