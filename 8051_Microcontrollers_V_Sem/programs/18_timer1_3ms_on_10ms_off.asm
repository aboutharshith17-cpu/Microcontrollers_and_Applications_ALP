; Experiment 18 - 3 ms ON, 10 ms OFF pulse
; Source page: 18
; Question:
; Generate a pulse waveform with ON time of 3 ms and OFF time
; of 10 ms on P0.5 using Timer 1 in Mode 1.
;
; The timer reload values are preserved from the source record.

ORG 0000H

MOV TMOD,#10H

AGAIN:
    SETB P0.5
    MOV TL1,#37H
    MOV TH1,#0F5H
    ACALL DELAY

    CLR P0.5
    MOV TL1,#0FFH
    MOV TH1,#0DBH
    ACALL DELAY

    SJMP AGAIN

DELAY:
    SETB TR1
WAIT:
    JNB TF1,WAIT
    CLR TR1
    CLR TF1
    RET

END
