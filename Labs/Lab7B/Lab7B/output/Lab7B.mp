Project:      output/Lab7B
Build Number: 0
Date:         Thu Aug 11 01:08:54 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 4% full. 1025 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 6 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   007C =    124. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab7b_Bank0
       01F7  LoadConfigTBL_lab7b_Bank1
       021C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   021C   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       021C  __func_lit_start
       021E  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   021E   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       021E  LoadConfigTBL_lab7b_Ordered
       0323  LoadConfigInit
       0323  _LoadConfigInit
       0333  _LoadConfig_lab7b
       0333  LoadConfig_lab7b
       038E  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   038E   01B7 =    439. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       038E  _LCD_PrCString
       038E  LCD_PrCString
       03A0  LCD_HEX_STR
       03B0  _LCD_PrHexByte
       03B0  LCD_PrHexByte
       03C3  LCD_PrHexInt
       03C3  _LCD_PrHexInt
       03CA  LCD_PrString
       03CA  _LCD_PrString
       03DC  _LCD_WriteData
       03DC  LCD_Write_Data
       03DC  LCD_WriteData
       03DC  _LCD_Write_Data
       03F0  _LCD_Control
       03F0  LCD_Control
       04A0  _LCD_Init
       04A0  _LCD_Start
       04A0  LCD_Start
       04A0  LCD_Init
       050F  LCD_ROW_OFFSET
       0513  LCD_Position
       0513  _LCD_Position
       0523  LCD_Delay50uTimes
       0523  _LCD_Delay50uTimes
       0529  LCD_Delay50u_Table
       0531  LCD_Delay50u
       0531  _LCD_Delay50u
       0545  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0545   005C =     92. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0545  _main
       0545  __text_start
       05A1  __text_end
       05A7  __xidata_end

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
                            data   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0005  _bACap

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Blab7b_RAM

