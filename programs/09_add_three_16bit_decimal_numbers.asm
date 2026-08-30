; Experiment 09 - Add three 16-bit decimal numbers
; Source page: 9
; Question:
; Add three 16-bit decimal numbers stored in consecutive memory
; locations starting from 40H. Store the result in consecutive
; memory locations starting from 60H, lower byte first.
;
; DAA is used for packed-BCD decimal addition.

ORG 0000H

MOV R7,#03H
MOV R1,#40H
MOV R4,#00H
MOV R5,#00H
MOV R6,#00H

AGAIN:
    MOV A,R4
    ADD A,@R1
    DAA
    MOV R4,A
    INC R1

    MOV A,R5
    ADDC A,@R1
    DAA
    MOV R5,A
    JNC NEXT
    INC R6

NEXT:
    INC R1
    DJNZ R7,AGAIN

MOV 60H,R4
MOV 61H,R5
MOV 62H,R6

SJMP $

END
