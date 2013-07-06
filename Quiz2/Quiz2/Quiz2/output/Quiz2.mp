Project:      output/Quiz2
Build Number: 0
Date:         Tue Aug  9 14:57:03 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1478 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 20 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0087 =    135. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A7  LoadConfigTBL_quiz2_Bank0
       01FC  LoadConfigTBL_quiz2_Bank1
       0227  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0227   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0227  __func_lit_start
       0229  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0229   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0229  LoadConfigTBL_quiz2_Ordered
       032E  LoadConfigInit
       032E  _LoadConfigInit
       033E  LoadConfig_quiz2
       033E  _LoadConfig_quiz2
       0399  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0399   0288 =    648. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0399  _PWM_ISR
       0424  PWM_EnableInt
       0424  _PWM_EnableInt
       0428  PWM_DisableInt
       0428  _PWM_DisableInt
       042C  _PWM_Start
       042C  PWM_Start
       0430  PWM_Stop
       0430  _PWM_Stop
       0434  PWM_WritePeriod
       0434  _PWM_WritePeriod
       0437  PWM_WritePulseWidth
       0437  _PWM_WritePulseWidth
       043A  _PWM_bReadPulseWidth
       043A  _bPWM_ReadPulseWidth
       043A  bPWM_ReadPulseWidth
       043A  PWM_bReadPulseWidth
       043D  _PWM_bReadCounter
       043D  _bPWM_ReadCounter
       043D  bPWM_ReadCounter
       043D  PWM_bReadCounter
       046A  LCD_PrCString
       046A  _LCD_PrCString
       047C  LCD_HEX_STR
       048C  LCD_PrHexByte
       048C  _LCD_PrHexByte
       049F  LCD_PrHexInt
       049F  _LCD_PrHexInt
       04A6  _LCD_PrString
       04A6  LCD_PrString
       04B8  _LCD_WriteData
       04B8  LCD_Write_Data
       04B8  _LCD_Write_Data
       04B8  LCD_WriteData
       04CC  LCD_Control
       04CC  _LCD_Control
       057C  _LCD_Init
       057C  LCD_Start
       057C  LCD_Init
       057C  _LCD_Start
       05EB  LCD_ROW_OFFSET
       05EF  _LCD_Position
       05EF  LCD_Position
       05FF  LCD_Delay50uTimes
       05FF  _LCD_Delay50uTimes
       0605  LCD_Delay50u_Table
       060D  _LCD_Delay50u
       060D  LCD_Delay50u
       0621  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0621   0145 =    325. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0621  _main
       0621  __text_start
       0677  _PWM10ms
       0766  __text_end
       076D  __xidata_end

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
                            data   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0012  _bPulseWidth
       0013  _ten_ms_counter

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ pwmint.asm, pwm.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r11.asm ]
[ r10.asm, r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Bquiz2_RAM	allocated at: 0

