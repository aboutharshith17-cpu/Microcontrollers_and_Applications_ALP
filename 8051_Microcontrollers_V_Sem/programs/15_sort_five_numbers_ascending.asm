; Experiment 15 - Sort five numbers in ascending order
; Source page: 15
; Question:
; A list of five 8-bit numbers is stored in successive memory
; locations starting from 30H. Sort the numbers in ascending order.
;
; Note:
; The handwritten branch line is ambiguous/crossed. For a valid
; ascending bubble sort, the intended condition is JC SKIP.

ORG 0000H

MOV R7,#05H
DEC R7

ITER:
    MOV R6,R7
    MOV R0,#30H
    MOV R1,#31H

COMP:
    MOV A,@R0
    MOV B,@R1
    CJNE A,B,NEXT

NEXT:
    JC SKIP
    MOV @R0,B
    MOV @R1,A

SKIP:
    INC R0
    INC R1
    DJNZ R6,COMP
    DJNZ R7,ITER

SJMP $

END
