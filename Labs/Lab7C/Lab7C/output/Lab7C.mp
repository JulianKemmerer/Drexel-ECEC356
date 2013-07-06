Project:      output/Lab7C
Build Number: 0
Date:         Thu Aug 11 02:01:38 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 4% full. 1102 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 6 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   007C =    124. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_Lab7C_Bank0
       01F7  LoadConfigTBL_Lab7C_Bank1
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
       021E  LoadConfigTBL_Lab7C_Ordered
       0323  LoadConfigInit
       0323  _LoadConfigInit
       0333  _LoadConfig_Lab7C
       0333  LoadConfig_Lab7C
       038E  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   038E   01F4 =    500. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       038E  _LCD_PrCString
       038E  LCD_PrCString
       03A0  LCD_HEX_STR
       03B0  LCD_PrHexByte
       03B0  _LCD_PrHexByte
       03C3  LCD_PrHexInt
       03C3  _LCD_PrHexInt
       03CA  _LCD_PrString
       03CA  LCD_PrString
       03DC  _LCD_WriteData
       03DC  _LCD_Write_Data
       03DC  LCD_Write_Data
       03DC  LCD_WriteData
       03F0  LCD_Control
       03F0  _LCD_Control
       04A0  LCD_Init
       04A0  _LCD_Init
       04A0  LCD_Start
       04A0  _LCD_Start
       050F  LCD_ROW_OFFSET
       0513  LCD_Position
       0513  _LCD_Position
       0523  LCD_Delay50uTimes
       0523  _LCD_Delay50uTimes
       0529  LCD_Delay50u_Table
       0531  _LCD_Delay50u
       0531  LCD_Delay50u
       0545  DAC6_SetPower
       0545  DAC6_Start
       0545  _DAC6_Start
       0545  _DAC6_SetPower
       054C  _DAC6_WriteBlind
       054C  DAC6_WriteBlind
       0562  DAC6_WriteStall
       0562  _DAC6_WriteStall
       057E  _DAC6_Stop
       057E  DAC6_Stop
       0582  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0582   006C =    108. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0582  _main
       0582  __text_start
       05EE  __text_end
       05F4  __xidata_end

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
       0005  _value

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocconfigtbl.asm, psocconfig.asm, lcd.asm, dac6.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-BLab7C_RAM

