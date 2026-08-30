; Experiment 08 - Add three 16-bit numbers
; Source page: 8
; Question:
; Add three 16-bit numbers stored in consecutive memory locations
; starting from 40H. Store the result in consecutive locations
; starting from 60H, lower byte first.
;
; The program reserves 60H-62H for the 24-bit result.

ORG 0000H

MOV R7,#03H
MOV R1,#40H
MOV R4,#00H
MOV R5,#00H
MOV R6,#00H

AGAIN:
    MOV A,R4
    ADD A,@R1
    MOV R4,A
    INC R1

    MOV A,R5
    ADDC A,@R1
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
