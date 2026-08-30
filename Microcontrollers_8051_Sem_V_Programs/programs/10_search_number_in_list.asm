; Experiment 10 - Search for a number in a list
; Source page: 10
; Question:
; A list of five 8-bit numbers is stored in successive memory
; locations starting from 60H. Check whether the number given in
; 50H is present in the list. Store FFH in 40H if present,
; otherwise store EEH. (Linear search.)

ORG 0000H

MOV R7,#05H
MOV R0,#60H

L:
    MOV A,@R0
    CJNE A,50H,Z
    MOV 40H,#0FFH
    SJMP $

Z:
    INC R0
    DJNZ R7,L
    MOV 40H,#0EEH

SJMP $

END
