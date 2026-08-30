; Experiment 02 - 8-bit x 16-bit multiplication
; Source page: 2
; Question:
; Multiply an 8-bit number stored in 40H with a 16-bit number stored
; in 50H and 51H. Store the 24-bit result in 60H, 61H and 62H,
; lower byte first.
;
; 8051 A51-style syntax.

ORG 0000H

MOV A,40H
MOV B,50H
MUL AB
MOV 60H,A
MOV 61H,B

MOV A,40H
MOV B,51H
MUL AB
ADD A,61H
MOV 61H,A

MOV A,#00H
ADDC A,B
MOV 62H,A

SJMP $

END
