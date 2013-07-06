Project:      output/HW2SEQ
Build Number: 0
Date:         Thu Jul 21 14:59:01 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 5% full. 1538 out of 32768 bytes used (does not include absolute areas).
  RAM 2% full. 19 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   009E =    158. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01CA  LoadConfigTBL_hw2seq_Bank0
       0219  LoadConfigTBL_hw2seq_Bank1
       023E  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   023E   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       023E  __func_lit_start
       0240  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0240   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0240  LoadConfigTBL_hw2seq_Ordered
       0345  LoadConfigInit
       0345  _LoadConfigInit
       0355  LoadConfig_hw2seq
       0355  _LoadConfig_hw2seq
       03B0  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   03B0   028F =    655. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       03B0  _LCD_PrCString
       03B0  LCD_PrCString
       03C2  LCD_HEX_STR
       03D2  LCD_PrHexByte
       03D2  _LCD_PrHexByte
       03E5  _LCD_PrHexInt
       03E5  LCD_PrHexInt
       03EC  _LCD_PrString
       03EC  LCD_PrString
       03FE  LCD_WriteData
       03FE  LCD_Write_Data
       03FE  _LCD_Write_Data
       03FE  _LCD_WriteData
       0412  LCD_Control
       0412  _LCD_Control
       04C2  LCD_Init
       04C2  LCD_Start
       04C2  _LCD_Init
       04C2  _LCD_Start
       0531  LCD_ROW_OFFSET
       0535  _LCD_Position
       0535  LCD_Position
       0545  LCD_Delay50uTimes
       0545  _LCD_Delay50uTimes
       054B  LCD_Delay50u_Table
       0553  _LCD_Delay50u
       0553  LCD_Delay50u
       0567  _LCD_DrawBG
       0598  _LCD_DrawVBG
       05CC  LCD_InitVBG
       05CC  _LCD_InitVBG
       05FD  LCD_BG_TYPE1
       0604  LCD_BG_TYPE2
       060B  _LCD_InitBG
       060B  LCD_InitBG
       063F  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   063F   0163 =    355. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       063F  _main
       063F  __text_start
       0664  _ButtonDown
       079E  PSoC_GPIO_ISR
       07A2  __text_end
       07A8  __xidata_end

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
                            data   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       0012  _sequence

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ psocgpioint.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, rZ.asm, rY.asm, rX.asm, r11.asm, r10.asm ]
[ r9.asm, r8.asm, r7.asm, r6.asm, r5.asm, r4.asm, r3.asm, r2.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Bhw2seq_RAM

