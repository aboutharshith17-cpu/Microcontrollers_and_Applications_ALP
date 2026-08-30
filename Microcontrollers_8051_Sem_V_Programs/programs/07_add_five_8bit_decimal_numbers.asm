; Experiment 07 - Add five 8-bit decimal numbers
; Source page: 7
; Question:
; Add five 8-bit decimal numbers stored in successive memory
; locations starting from 30H. Store the lower byte of the result
; in 40H and the higher byte in 41H.
;
; DAA is used because the source treats the operands as packed BCD.

ORG 0000H

MOV R7,#05H
MOV R1,#30H
MOV R6,#00H
CLR A

AGAIN:
    ADD A,@R1
    DAA
    JNC NEXT
    INC R6
NEXT:
    INC R1
    DJNZ R7,AGAIN

MOV 40H,A
MOV 41H,R6

SJMP $

END
