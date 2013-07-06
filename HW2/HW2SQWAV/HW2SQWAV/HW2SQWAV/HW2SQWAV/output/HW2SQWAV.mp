Project:      output/HW2SQWAV
Build Number: 0
Date:         Thu Aug  4 11:36:58 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1385 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 25 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0093 =    147. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A7  LoadConfigTBL_hw2sqwav_Bank0
       0202  LoadConfigTBL_hw2sqwav_Bank1
       0233  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0233   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0233  __func_lit_start
       0235  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0235   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0235  LoadConfigTBL_hw2sqwav_Ordered
       033A  LoadConfigInit
       033A  _LoadConfigInit
       034A  LoadConfig_hw2sqwav
       034A  _LoadConfig_hw2sqwav
       03A5  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03A5   021B =    539. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03A5  _Timer_ISR
       03A9  _Timer_EnableInt
       03A9  Timer_EnableInt
       03AD  _Timer_DisableInt
       03AD  Timer_DisableInt
       03B1  _Timer_Start
       03B1  Timer_Start
       03B5  _Timer_Stop
       03B5  Timer_Stop
       03B9  _Timer_WritePeriod
       03B9  Timer_WritePeriod
       03BF  _Timer_WriteCompareValue
       03BF  Timer_WriteCompareValue
       03C5  _Timer_wReadCompareValue
       03C5  wTimer_ReadCompareValue
       03C5  _wTimer_ReadCompareValue
       03C5  Timer_wReadCompareValue
       03CB  _Timer_wReadTimerSaveCV
       03CB  Timer_wReadTimerSaveCV
       03CB  wTimer_ReadTimerSaveCV
       03CB  wTimer_ReadCounter
       03CB  _wTimer_ReadCounter
       03CB  _wTimer_ReadTimerSaveCV
       0401  Timer_wReadTimer
       0401  wTimer_ReadTimer
       0401  wTimer_CaptureCounter
       0401  _Timer_wReadTimer
       0401  _wTimer_ReadTimer
       0401  _wTimer_CaptureCounter
       0409  LCD_PrCString
       0409  _LCD_PrCString
       041B  LCD_HEX_STR
       042B  LCD_PrHexByte
       042B  _LCD_PrHexByte
       043E  LCD_PrHexInt
       043E  _LCD_PrHexInt
       0445  _LCD_PrString
       0445  LCD_PrString
       0457  _LCD_Write_Data
       0457  LCD_WriteData
       0457  LCD_Write_Data
       0457  _LCD_WriteData
       046B  LCD_Control
       046B  _LCD_Control
       051B  _LCD_Start
       051B  LCD_Start
       051B  _LCD_Init
       051B  LCD_Init
       058A  LCD_ROW_OFFSET
       058E  _LCD_Position
       058E  LCD_Position
       059E  LCD_Delay50uTimes
       059E  _LCD_Delay50uTimes
       05A4  LCD_Delay50u_Table
       05AC  _LCD_Delay50u
       05AC  LCD_Delay50u
       05C0  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   05C0   0149 =    329. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       05C0  _main
       05C0  __text_start
       05E9  _SignalHigh
       0708  _SleepTimerISR
       0709  __text_end
       070F  __xidata_end

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
                            data   0000   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0012  _time1
       0014  _time2
       0016  _delT
       0018  _bDataAvailable

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ timerint.asm, timer.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r11.asm ]
[ r10.asm, r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Bhw2sqwav_RAM	allocated at: 0

