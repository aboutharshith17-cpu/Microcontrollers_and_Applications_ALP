; Experiment 14 - Find the largest number
; Source page: 14
; Question:
; A list of five 8-bit numbers is stored in successive memory
; locations starting from 30H. Find the largest number and
; store it in 50H.

ORG 0000H

MOV R7,#05H
MOV 50H,30H
MOV R0,#31H

AGAIN:
    MOV A,@R0
    CJNE A,50H,NEXT

NEXT:
    JC NEXT1
    MOV 50H,A

NEXT1:
    INC R0
    DJNZ R7,AGAIN

SJMP $

END
