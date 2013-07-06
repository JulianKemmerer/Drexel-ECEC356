Project:      output/Exam2
Build Number: 0
Date:         Thu Aug 11 12:48:37 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 7% full. 2155 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 16 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   02A1 =    673. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  _SineTable
       02A0  _SineTableRect
       03A5  LoadConfigTBL_exam2_Bank0
       0410  LoadConfigTBL_exam2_Bank1
       0441  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0441   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0441  __func_lit_start
       0443  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0443   0170 =    368. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0443  LoadConfigTBL_exam2_Ordered
       0548  LoadConfigInit
       0548  _LoadConfigInit
       0558  LoadConfig_exam2
       0558  _LoadConfig_exam2
       05B3  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   05B3   0233 =    563. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       05B3  SCDAC_Start
       05B3  SCDAC_SetPower
       05B3  _SCDAC_SetPower
       05B3  _SCDAC_Start
       05C7  _SCDAC_Stop
       05C7  SCDAC_Stop
       05CB  LCD_PrCString
       05CB  _LCD_PrCString
       05DD  LCD_HEX_STR
       05ED  _LCD_PrHexByte
       05ED  LCD_PrHexByte
       0600  _LCD_PrHexInt
       0600  LCD_PrHexInt
       0607  LCD_PrString
       0607  _LCD_PrString
       0619  _LCD_WriteData
       0619  _LCD_Write_Data
       0619  LCD_WriteData
       0619  LCD_Write_Data
       062D  _LCD_Control
       062D  LCD_Control
       06DD  LCD_Init
       06DD  _LCD_Start
       06DD  LCD_Start
       06DD  _LCD_Init
       074C  LCD_ROW_OFFSET
       0750  _LCD_Position
       0750  LCD_Position
       0760  _LCD_Delay50uTimes
       0760  LCD_Delay50uTimes
       0766  LCD_Delay50u_Table
       076E  _LCD_Delay50u
       076E  LCD_Delay50u
       0782  _Counter16_ISR
       0786  Counter16_EnableInt
       0786  _Counter16_EnableInt
       078A  Counter16_DisableInt
       078A  _Counter16_DisableInt
       078E  Counter16_Start
       078E  _Counter16_Start
       0792  _Counter16_Stop
       0792  Counter16_Stop
       0796  _Counter16_WritePeriod
       0796  Counter16_WritePeriod
       079C  Counter16_WriteCompareValue
       079C  _Counter16_WriteCompareValue
       07A2  wCounter16_ReadCompareValue
       07A2  Counter16_wReadCompareValue
       07A2  _Counter16_wReadCompareValue
       07A2  _wCounter16_ReadCompareValue
       07A8  _wCounter16_ReadCounter
       07A8  Counter16_wReadCounter
       07A8  _Counter16_wReadCounter
       07A8  wCounter16_ReadCounter
       07E6  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   07E6   0225 =    549. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       07E6  _main
       07E6  __text_start
       0904  _CounterISR
       0A0B  __text_end
       0A16  __xidata_end

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
               virtual_registers   0003   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0003  __rZ
       0004  __rY
       0005  __rX
       0006  __r3
       0007  __r2
       0008  __r1
       0009  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       000A  _sinefreq
       000C  _CountPeriod
       000E  _phaseShift
       000F  _Pointer

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ scdac.asm, psocconfigtbl.asm, psocconfig.asm, lcd.asm, counter16int.asm, counter16.asm, rZ.asm ]
[ rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmod_32x32_32_util.asm, i_div32_block_util.asm ]
[ i_div32_not_util.asm ]

Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0x3
-Bexam2_RAM

