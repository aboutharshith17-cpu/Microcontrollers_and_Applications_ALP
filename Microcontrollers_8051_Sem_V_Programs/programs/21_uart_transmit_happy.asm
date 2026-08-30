; Experiment 21 - UART transmit "HAPPY"
; Source page: 21
; Question:
; Transmit the word "HAPPY" using the 8051 serial port in Mode 1
; with a baud rate of 9600.

ORG 0000H

MOV TMOD,#20H
MOV TH1,#0FDH
MOV SCON,#50H
SETB TR1

AGAIN:
    MOV A,#'H'
    ACALL TRANS
    MOV A,#'A'
    ACALL TRANS
    MOV A,#'P'
    ACALL TRANS
    MOV A,#'P'
    ACALL TRANS
    MOV A,#'Y'
    ACALL TRANS
    SJMP AGAIN

TRANS:
    MOV SBUF,A
WAIT:
    JNB TI,WAIT
    CLR TI
    RET

END
