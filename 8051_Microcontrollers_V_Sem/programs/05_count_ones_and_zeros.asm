; Experiment 05 - Count ones and zeros
; Source page: 5
; Question:
; Count the number of ones and zeros in an 8-bit number stored in 30H.
; Store the zero count in 40H and the one count in 41H.

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

MOV A,#08H
CLR C
SUBB A,40H
MOV 41H,A

SJMP $

END
