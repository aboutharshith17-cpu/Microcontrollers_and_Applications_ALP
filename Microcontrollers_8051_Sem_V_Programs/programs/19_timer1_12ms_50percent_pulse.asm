; Experiment 19 - 12 ms, 50% duty-cycle pulse
; Source page: 19
; Question:
; Generate a pulse waveform with 50% duty cycle and total time
; period of 12 ms on P0.3 using Timer 1 in Mode 1.
;
; The source waveform indicates approximately 6 ms ON and 6 ms OFF.
; The reload values are preserved from the written program.

ORG 0000H

MOV TMOD,#10H
SETB P0.3

AGAIN:
    MOV TL1,#65H
    MOV TH1,#0E8H
    ACALL DELAY
    CPL P0.3
    SJMP AGAIN

DELAY:
    SETB TR1
WAIT:
    JNB TF1,WAIT
    CLR TR1
    CLR TF1
    RET

END
