Project:      output/Quiz1
Build Number: 0
Date:         Tue Jul 12 15:21:40 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1535 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 25 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   0076 =    118. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A2  LoadConfigTBL_quiz1_Bank0
       01F1  LoadConfigTBL_quiz1_Bank1
       0216  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0216   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0216  __func_lit_start
       0218  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0218   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0218  LoadConfigTBL_quiz1_Ordered
       031D  LoadConfigInit
       031D  _LoadConfigInit
       032D  LoadConfig_quiz1
       032D  _LoadConfig_quiz1
       0388  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0388   01B7 =    439. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0388  _LCD_PrCString
       0388  LCD_PrCString
       039A  LCD_HEX_STR
       03AA  _LCD_PrHexByte
       03AA  LCD_PrHexByte
       03BD  LCD_PrHexInt
       03BD  _LCD_PrHexInt
       03C4  LCD_PrString
       03C4  _LCD_PrString
       03D6  _LCD_WriteData
       03D6  LCD_Write_Data
       03D6  LCD_WriteData
       03D6  _LCD_Write_Data
       03EA  _LCD_Control
       03EA  LCD_Control
       049A  _LCD_Init
       049A  _LCD_Start
       049A  LCD_Start
       049A  LCD_Init
       0509  LCD_ROW_OFFSET
       050D  LCD_Position
       050D  _LCD_Position
       051D  LCD_Delay50uTimes
       051D  _LCD_Delay50uTimes
       0523  LCD_Delay50u_Table
       052B  LCD_Delay50u
       052B  _LCD_Delay50u
       053F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   053F   0260 =    608. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       053F  _main
       053F  __text_start
       0550  _OneSecond
       060B  _ButtonPressed
       0707  _updateLCD
       079F  __text_end
       07AB  __xidata_end

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
       0012  _state
       0013  _seconds
       0014  _stateDelay
       0015  _day
       0016  _month
       0017  _year
       0018  _blinkState

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r11.asm, r10.asm, r9.asm, r8.asm ]
[ r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Bquiz1_RAM

