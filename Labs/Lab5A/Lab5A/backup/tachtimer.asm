;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TachTimer.asm
;;   Version: 2.6, Updated on 2011/3/29 at 14:31:11
;;  Generated by PSoC Designer 5.1.2110.0
;;
;;  DESCRIPTION: Timer16 User Module software implementation file
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
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
export  TachTimer_EnableInt
export _TachTimer_EnableInt
export  TachTimer_DisableInt
export _TachTimer_DisableInt
export  TachTimer_Start
export _TachTimer_Start
export  TachTimer_Stop
export _TachTimer_Stop
export  TachTimer_WritePeriod
export _TachTimer_WritePeriod
export  TachTimer_WriteCompareValue
export _TachTimer_WriteCompareValue
export  TachTimer_wReadCompareValue
export _TachTimer_wReadCompareValue
export  TachTimer_wReadTimer
export _TachTimer_wReadTimer
export  TachTimer_wReadTimerSaveCV
export _TachTimer_wReadTimerSaveCV

; The following functions are deprecated and subject to omission in future releases
;
export  wTachTimer_ReadCompareValue  ; deprecated
export _wTachTimer_ReadCompareValue  ; deprecated
export  wTachTimer_ReadTimer         ; deprecated
export _wTachTimer_ReadTimer         ; deprecated
export  wTachTimer_ReadTimerSaveCV   ; deprecated
export _wTachTimer_ReadTimerSaveCV   ; deprecated

export  wTachTimer_ReadCounter       ; obsolete
export _wTachTimer_ReadCounter       ; obsolete
export  wTachTimer_CaptureCounter    ; obsolete
export _wTachTimer_CaptureCounter    ; obsolete


AREA Lab5A_RAM (RAM,REL)

;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------


AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_EnableInt
;
;  DESCRIPTION:
;     Enables this timer's interrupt by setting the interrupt enable mask bit
;     associated with this User Module. This function has no effect until and
;     unless the global interrupts are enabled (for example by using the
;     macro M8C_EnableGInt).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None.
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_EnableInt:
_TachTimer_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TachTimer_EnableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_DisableInt
;
;  DESCRIPTION:
;     Disables this timer's interrupt by clearing the interrupt enable
;     mask bit associated with this User Module.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_DisableInt:
_TachTimer_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TachTimer_DisableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_Start
;
;  DESCRIPTION:
;     Sets the start bit in the Control register of this user module.  The
;     timer will begin counting on the next input clock.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_Start:
_TachTimer_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TachTimer_Start_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_Stop
;
;  DESCRIPTION:
;     Disables timer operation by clearing the start bit in the Control
;     register of the LSB block.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_Stop:
_TachTimer_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TachTimer_Stop_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_WritePeriod
;
;  DESCRIPTION:
;     Write the 16-bit period value into the Period register (DR1). If the
;     Timer user module is stopped, then this value will also be latched
;     into the Count register (DR0).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: fastcall16 WORD wPeriodValue (LSB in A, MSB in X)
;  RETURNS:   Nothing
;  SIDE EFFECTS:
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_WritePeriod:
_TachTimer_WritePeriod:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[TachTimer_PERIOD_LSB_REG], A
   mov   A, X
   mov   reg[TachTimer_PERIOD_MSB_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_WriteCompareValue
;
;  DESCRIPTION:
;     Writes compare value into the Compare register (DR2).
;
;     NOTE! The Timer user module must be STOPPED in order to write the
;           Compare register. (Call TachTimer_Stop to disable).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    fastcall16 WORD wCompareValue (LSB in A, MSB in X)
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_WriteCompareValue:
_TachTimer_WriteCompareValue:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[TachTimer_COMPARE_LSB_REG], A
   mov   A, X
   mov   reg[TachTimer_COMPARE_MSB_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_wReadCompareValue
;
;  DESCRIPTION:
;     Reads the Compare registers.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 WORD wCompareValue (value of DR2 in the X & A registers)
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TachTimer_wReadCompareValue:
_TachTimer_wReadCompareValue:
 wTachTimer_ReadCompareValue:                    ; this name deprecated
_wTachTimer_ReadCompareValue:                    ; this name deprecated
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[TachTimer_COMPARE_MSB_REG]
   mov   X, A
   mov   A, reg[TachTimer_COMPARE_LSB_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_wReadTimerSaveCV
;
;  DESCRIPTION:
;     Returns the value in the Count register (DR0), preserving the
;     value in the compare register (DR2).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;  RETURNS:   fastcall16 WORD wCount (value of DR0 in the X & A registers)
;  SIDE EFFECTS:
;     1) May cause an interrupt, if interrupt on Compare is enabled.
;     2) If enabled, Global interrupts are momentarily disabled.
;     3) The user module is stopped momentarily while the compare value is
;        restored.  This may cause the Count register to miss one or more
;        counts depending on the input clock speed.
;     4) The A and X registers may be modified by this or future implementations
;        of this function.  The same is true for all RAM page pointer registers in
;        the Large Memory Model.  When necessary, it is the calling function's
;        responsibility to perserve their values across calls to fastcall16 
;        functions.
;
;  THEORY of OPERATION:
;     1) Read and save the Compare register.
;     2) Read the Count register, causing its data to be latched into
;        the Compare register.
;     3) Read and save the Counter value, now in the Compare register,
;        to the buffer.
;     4) Disable global interrupts
;     5) Halt the timer
;     6) Restore the Compare register values
;     7) Start the Timer again
;     8) Restore global interrupt state
;
 TachTimer_wReadTimerSaveCV:
_TachTimer_wReadTimerSaveCV:
 wTachTimer_ReadTimerSaveCV:                     ; this name deprecated
_wTachTimer_ReadTimerSaveCV:                     ; this name deprecated
 wTachTimer_ReadCounter:                         ; this name deprecated
_wTachTimer_ReadCounter:                         ; this name deprecated

CpuFlags:      equ   0
wCount_MSB:    equ   1
wCount_LSB:    equ   2

   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X, SP                                   ; X <- stack frame pointer
   add   SP, 3                                   ; Reserve space for flags, count
   mov   A, reg[TachTimer_CONTROL_LSB_REG]       ; save the Control register
   push  A
   mov   A, reg[TachTimer_COMPARE_LSB_REG]       ; save the Compare register
   push  A
   mov   A, reg[TachTimer_COMPARE_MSB_REG]
   push  A
   mov   A, reg[TachTimer_COUNTER_LSB_REG]       ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!
   mov   A, reg[TachTimer_COMPARE_MSB_REG]       ; Now grab DR2 (DR0) and save
   mov   [X+wCount_MSB], A
   mov   A, reg[TachTimer_COMPARE_LSB_REG]
   mov   [X+wCount_LSB], A
   mov   A, 0                                    ; Guess the global interrupt state
   tst   reg[CPU_F], FLAG_GLOBAL_IE              ; Currently Disabled?
   jz    .SetupStatusFlag                        ;   Yes, guess was correct
   mov   A, FLAG_GLOBAL_IE                       ;    No, modify our guess
.SetupStatusFlag:                                ; and ...
   mov   [X+CpuFlags], A                         ;   StackFrame[0] <- Flag Reg image
   M8C_DisableGInt                               ; Disable interrupts globally
   TachTimer_Stop_M                              ; Disable (stop) the timer
   pop   A                                       ; Restore the Compare register
   mov   reg[TachTimer_COMPARE_MSB_REG], A
   pop   A
   mov   reg[TachTimer_COMPARE_LSB_REG], A
   pop   A                                       ; restore start state of the timer
   mov   reg[TachTimer_CONTROL_LSB_REG], A
   pop   A                                       ; Return result stored in stack frame
   pop   X
   RAM_EPILOGUE RAM_USE_CLASS_2
   reti                                          ; Flag Reg <- StackFrame[0]

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TachTimer_wReadTimer
;
;  DESCRIPTION:
;     Performs a software capture of the Count register.  A synchronous
;     read of the Count register is performed.  The timer is NOT stopped.
;
;     WARNING - this will cause loss of data in the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 WORD wCount, (value of DR0 in the X & A registers)
;  SIDE EFFECTS:
;    May cause an interrupt.
;
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
;  THEORY of OPERATION:
;     1) Read the Count register - this causes the count value to be
;        latched into the Compare registers.
;     2) Read and return the Count register values from the Compare
;        registers into the return buffer.
;
 TachTimer_wReadTimer:
_TachTimer_wReadTimer:
 wTachTimer_ReadTimer:                           ; this name deprecated
_wTachTimer_ReadTimer:                           ; this name deprecated
 wTachTimer_CaptureCounter:                      ; this name deprecated
_wTachTimer_CaptureCounter:                      ; this name deprecated

   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[TachTimer_COUNTER_LSB_REG]       ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!

   mov   A, reg[TachTimer_COMPARE_MSB_REG]       ; Return DR2 (actually DR0)
   mov   X, A
   mov   A, reg[TachTimer_COMPARE_LSB_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION

; End of File TachTimer.asm