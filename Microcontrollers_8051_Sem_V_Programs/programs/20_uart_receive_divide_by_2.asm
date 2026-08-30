; Experiment 20 - UART receive and divide by 2
; Source page: 20
; Question:
; Receive a single-digit decimal number through the 8051 serial
; port in Mode 1, divide the received number by 2, and output the
; quotient at Port 1 and remainder at Port 2. Use baud rate 9600.
;
; Note:
; The source program omits CLR C before SUBB. It is added here because
; SUBB includes the carry/borrow flag and the intended ASCII conversion
; requires a known C=0.

ORG 0000H

MOV TMOD,#20H
MOV TH1,#0FDH
MOV SCON,#50H
SETB TR1
CLR RI

WAIT:
    JNB RI,WAIT

MOV A,SBUF
CLR C
SUBB A,#30H

MOV B,#02H
DIV AB

MOV P1,A
MOV P2,B

SJMP $

END
