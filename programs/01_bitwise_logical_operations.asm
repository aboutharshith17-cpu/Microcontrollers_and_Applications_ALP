; Experiment 01 - Bitwise logical operations
; Source page: 1
; Question:
; Perform AND, OR, EX-OR, NAND, NOR and EX-NOR operations between
; two 8-bit numbers and store the results in consecutive memory
; locations starting from 60H.
;
; Note from source:
; The written question mentions 30H/31H, but the program and recorded
; input use 50H/51H. This file follows the program as written.

ORG 0000H

MOV A,50H
ANL A,51H
MOV 60H,A

MOV A,50H
ORL A,51H
MOV 61H,A

MOV A,50H
XRL A,51H
MOV 62H,A

MOV A,60H
CPL A
MOV 63H,A

MOV A,61H
CPL A
MOV 64H,A

MOV A,62H
CPL A
MOV 65H,A

SJMP $

END
