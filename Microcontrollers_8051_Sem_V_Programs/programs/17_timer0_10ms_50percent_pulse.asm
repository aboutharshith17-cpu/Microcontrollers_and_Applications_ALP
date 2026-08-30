; Experiment 17 - 10 ms, 50% duty-cycle pulse
; Source page: 17
; Question:
; Generate a pulse waveform with 50% duty cycle and total time
; period of 10 ms on P1.1 using Timer 0 in Mode 1.
;
; The timer reload values are preserved from the source record.

ORG 0000H

MOV TMOD,#01H
SETB P1.1

AGAIN:
    MOV TL0,#0FFH
    MOV TH0,#0EDH
    ACALL DELAY
    CPL P1.1
    SJMP AGAIN

DELAY:
    SETB TR0
WAIT:
    JNB TF0,WAIT
    CLR TR0
    CLR TF0
    RET

END
