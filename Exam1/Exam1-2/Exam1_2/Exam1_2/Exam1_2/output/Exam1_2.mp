Project:      output/Exam1_2
Build Number: 0
Date:         Thu Jul 21 13:02:15 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1382 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 25 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0090 =    144. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A4  LoadConfigTBL_exam1_2_Bank0
       01FF  LoadConfigTBL_exam1_2_Bank1
       0230  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0230   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0230  __func_lit_start
       0232  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0232   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0232  LoadConfigTBL_exam1_2_Ordered
       0337  LoadConfigInit
       0337  _LoadConfigInit
       0347  LoadConfig_exam1_2
       0347  _LoadConfig_exam1_2
       03A2  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03A2   021B =    539. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03A2  _Timer_ISR
       03A6  Timer_EnableInt
       03A6  _Timer_EnableInt
       03AA  _Timer_DisableInt
       03AA  Timer_DisableInt
       03AE  _Timer_Start
       03AE  Timer_Start
       03B2  _Timer_Stop
       03B2  Timer_Stop
       03B6  _Timer_WritePeriod
       03B6  Timer_WritePeriod
       03BC  _Timer_WriteCompareValue
       03BC  Timer_WriteCompareValue
       03C2  wTimer_ReadCompareValue
       03C2  Timer_wReadCompareValue
       03C2  _wTimer_ReadCompareValue
       03C2  _Timer_wReadCompareValue
       03C8  _Timer_wReadTimerSaveCV
       03C8  wTimer_ReadTimerSaveCV
       03C8  _wTimer_ReadTimerSaveCV
       03C8  _wTimer_ReadCounter
       03C8  wTimer_ReadCounter
       03C8  Timer_wReadTimerSaveCV
       03FE  Timer_wReadTimer
       03FE  wTimer_ReadTimer
       03FE  wTimer_CaptureCounter
       03FE  _Timer_wReadTimer
       03FE  _wTimer_ReadTimer
       03FE  _wTimer_CaptureCounter
       0406  LCD_PrCString
       0406  _LCD_PrCString
       0418  LCD_HEX_STR
       0428  LCD_PrHexByte
       0428  _LCD_PrHexByte
       043B  LCD_PrHexInt
       043B  _LCD_PrHexInt
       0442  _LCD_PrString
       0442  LCD_PrString
       0454  _LCD_Write_Data
       0454  LCD_WriteData
       0454  LCD_Write_Data
       0454  _LCD_WriteData
       0468  LCD_Control
       0468  _LCD_Control
       0518  _LCD_Start
       0518  LCD_Start
       0518  _LCD_Init
       0518  LCD_Init
       0587  LCD_ROW_OFFSET
       058B  _LCD_Position
       058B  LCD_Position
       059B  LCD_Delay50uTimes
       059B  _LCD_Delay50uTimes
       05A1  LCD_Delay50u_Table
       05A9  _LCD_Delay50u
       05A9  LCD_Delay50u
       05BD  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   05BD   0149 =    329. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       05BD  _main
       05BD  __text_start
       05D1  _switchDown
       0706  __text_end
       070C  __xidata_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0146 =    326. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       0143  bGetPowerSetting
       0143  _bGetPowerSetting

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
       0014  _currentCount
       0016  _time2
       0018  _dataAvailable

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
-Bexam1_2_RAM	allocated at: 0

