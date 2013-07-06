Project:      output/Lab7A
Build Number: 0
Date:         Thu Aug 11 00:17:50 2011
Compiler:     ICCM8C
Version:      7.04

  ROM 2% full. 644 out of 32768 bytes used (does not include absolute areas).
  RAM 1% full. 2 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   008C =    140. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_lab7a_Bank0
       0207  LoadConfigTBL_lab7a_Bank1
       022C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   022C   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       022C  __func_lit_start
       022E  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   022E   0167 =    359. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       022E  LoadConfigTBL_lab7a_Ordered
       0333  LoadConfigInit
       0333  _LoadConfigInit
       033A  _LoadConfig_lab7a
       033A  LoadConfig_lab7a
       0395  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0395   0078 =    120. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0395  RefLoMux_SetPower
       0395  _RefLoMux_Start
       0395  _RefLoMux_SetPower
       0395  RefLoMux_Start
       03A7  _RefLoMux_Stop
       03A7  RefLoMux_Stop
       03AB  _RefLoMux_RefSelect
       03AB  RefLoMux_RefSelect
       03BD  RefHiMux_SetPower
       03BD  _RefHiMux_SetPower
       03BD  RefHiMux_Start
       03BD  _RefHiMux_Start
       03CF  RefHiMux_Stop
       03CF  _RefHiMux_Stop
       03D3  RefHiMux_RefSelect
       03D3  _RefHiMux_RefSelect
       03E5  RefAgndMux_Start
       03E5  RefAgndMux_SetPower
       03E5  _RefAgndMux_Start
       03E5  _RefAgndMux_SetPower
       03F7  RefAgndMux_Stop
       03F7  _RefAgndMux_Stop
       03FB  _RefAgndMux_RefSelect
       03FB  RefAgndMux_RefSelect
       040D  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   040D   0017 =     23. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       040D  _main
       040D  __text_start
       0424  __text_end
       0426  __xidata_end

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
               virtual_registers   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r1
       0001  __r0

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ reflomux.asm, refhimux.asm, refagndmux.asm, psocconfigtbl.asm, psocconfig.asm, r1.asm, r0.asm ]


Area Definitions

-blit:0x1a0.0x7fff
-bdata:0.0x6ff
-BInterruptRAM:0	allocated at: 0
-Bvirtual_registers	allocated at: 0
-Blab7a_RAM

