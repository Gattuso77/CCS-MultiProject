;-------------------------------------------------------------------------------
; MSP430 Assembler Code Template for use with TI Code Composer Studio
;
;
;-------------------------------------------------------------------------------
            .cdecls C,LIST,"msp430.h"       ; Include device header file

;-------------------------------------------------------------------------------
            .def    TIMER0_A0_ISR            ; Export program entry-point to
                                            ; make it known to linker.
;-------------------------------------------------------------------------------
            .text                           ; Assemble into program memory.
            .retain                         ; Override ELF conditional linking
                                            ; and retain current section.
            .retainrefs                     ; And retain any sections that have
                                            ; references to current section.

;-------------------------------------------------------------------------------
; ISR Definition
;-------------------------------------------------------------------------------
TIMER0_A0_ISR
			XOR.B	#BIT0,&P1OUT
			XOR.B	#BIT7,&P4OUT
			reti



;-------------------------------------------------------------------------------
; ISR Allocation
;-------------------------------------------------------------------------------
            .sect   TIMER0_A0_VECTOR
            .short  TIMER0_A0_ISR
