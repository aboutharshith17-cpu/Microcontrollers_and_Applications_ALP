# Source notes and transcription decisions

The uploaded PDF contains 21 scanned pages. The pages are image-based, so the handwritten assembly was transcribed from the page images.

## Items requiring attention

### Program 01 - page 1
The written question refers to memory locations `30H` and `31H`, while the actual program and recorded input use `50H` and `51H`. The file follows the actual program (`50H`/`51H`).

### Program 11 - page 11
The source describes a 2-out-of-5-style validity condition: the three MSBs are high and exactly two of the remaining five bits are high. The code was transcribed according to that logic.

### Program 12 - page 12
The source describes the complementary condition: the three MSBs are zero and exactly two of the remaining five bits are zero. The code follows the written logic.

### Program 15 - page 15
The handwritten branch line after `CJNE A,B,NEXT` is crossed/ambiguous. For an ascending bubble sort, `JC SKIP` is the logically intended branch, because `CJNE` sets carry when `A < B`.

### Program 20 - page 20
The handwritten source performs `SUBB A,#30H` without first clearing carry. A `CLR C` instruction is included in the GitHub version so the ASCII-to-digit subtraction has deterministic behavior.

### Timer programs - pages 17 to 19
The timer reload values are preserved from the record. Exact timing depends on the 8051 oscillator frequency and instruction-cycle assumptions; the source does not explicitly state the oscillator frequency on these pages.

## Source/output pages

Pages 1-16 contain the arithmetic, logical, search, validation and sorting experiments. Pages 17-19 contain timer waveform diagrams/programs. Pages 20-21 contain UART receive/transmit programs.

The left-hand pages of the scanned record contain example input/output values for most experiments; these were used only as source-reference information and were not silently substituted into the programs.
