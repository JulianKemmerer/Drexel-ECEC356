;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TachTimerINT.asm
;;   Version: 2.6, Updated on 2011/3/29 at 14:31:11
;;  Generated by PSoC Designer 5.1.2110.0
;;
;;  DESCRIPTION: Timer16 Interrupt Service Routine
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2011. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "TachTimer.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  _TachTimer_ISR


AREA InterruptRAM (RAM,REL,CON)

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
; Includes
;------------------------

	
;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)


AREA UserModules (ROM, REL)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _TachTimer_ISR
;
;  DESCRIPTION: Unless modified, this implements only a null handler stub.
;
;-----------------------------------------------------------------------------
;

_TachTimer_ISR:

   ;@PSoC_UserCode_BODY@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------
   ;   NOTE: interrupt service routines must preserve
   ;   the values of the A and X CPU registers.
	
	
	push A
	push X
	
	
	inc [_cNumCycles]

	cmp [_cNumCycles],0
	jnz NotZero
	call TachTimer_wReadCompareValue
	mov [_wFirstValue],X
	mov [_wFirstValue+1],A
	
NotZero:
	call TachTimer_wReadCompareValue
	mov [_wLastValue],X
	mov [_wLastValue+1],A

	pop X
	pop A




   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)

   reti


; end of file TachTimerINT.asm
