; Experiment 03 - Count number of zeros
; Source page: 3
; Question:
; Count the number of zeros in an 8-bit number stored in 30H and
; store the count in memory location 40H.

ORG 0000H

MOV 40H,#00H
MOV R7,#08H
MOV A,30H

AGAIN:
    RRC A
    JC NEXT
    INC 40H
NEXT:
    DJNZ R7,AGAIN

SJMP $

END
