; Experiment 11 - Check a 2-out-of-5 code (high pattern)
; Source page: 11
; Question:
; Check whether the 8-bit number in 40H is a valid 2-out-of-5 code.
; The source specifies that the 3 MSBs must be high and exactly two
; of the remaining 5 bits must be high. Store FFH in 50H if valid;
; otherwise store EEH.

ORG 0000H

MOV A,40H
ANL A,#0E0H
CJNE A,#0E0H,INVALID

MOV A,40H
MOV R7,#05H
MOV R6,#00H

AGAIN:
    RRC A
    JNC NEXT
    INC R6
NEXT:
    DJNZ R7,AGAIN

CJNE R6,#02H,INVALID
MOV 50H,#0FFH
SJMP $

INVALID:
    MOV 50H,#0EEH

SJMP $

END
