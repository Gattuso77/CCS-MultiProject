;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file

            .def    WDT_ISR                 ; WDT ISR symbol

            .text                           ; Assemble into program memory.


;-------------------------------------------------------------------------------
WDT_ISR
;-------------------------------------------------------------------------------
            XOR.B	#BIT7,&P4OUT			;
            XOR.B	#BIT0,&P1OUT			;
            reti

;-------------------------------------------------------------------------------
; Vector alocation
;-------------------------------------------------------------------------------
            .sect   WDT_VECTOR                ; MSP430 RESET Vector
            .short  WDT_ISR

