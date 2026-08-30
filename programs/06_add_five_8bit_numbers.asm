; Experiment 06 - Add five 8-bit numbers
; Source page: 6
; Question:
; Add five 8-bit numbers stored in successive memory locations
; starting from 30H. Store the lower byte of the result in 40H
; and the higher byte in 41H.

ORG 0000H

MOV R7,#05H
MOV R1,#30H
MOV R6,#00H
CLR A

AGAIN:
    ADD A,@R1
    JNC NEXT
    INC R6
NEXT:
    INC R1
    DJNZ R7,AGAIN

MOV 40H,A
MOV 41H,R6

SJMP $

END
