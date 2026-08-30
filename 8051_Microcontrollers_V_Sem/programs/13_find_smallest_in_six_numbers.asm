; Experiment 13 - Find the smallest number
; Source page: 13
; Question:
; A list of six 8-bit numbers is stored in successive memory
; locations starting from 30H. Find the smallest number and
; store it in 50H.

ORG 0000H

MOV R7,#06H
DEC R7
MOV 50H,30H
MOV R0,#31H

AGAIN:
    MOV A,@R0
    CJNE A,50H,NEXT

NEXT:
    JNC NEXT1
    MOV 50H,A

NEXT1:
    INC R0
    DJNZ R7,AGAIN

SJMP $

END
