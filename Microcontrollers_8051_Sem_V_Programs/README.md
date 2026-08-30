# 8051 Microcontrollers - V Semester Programs

This repository contains the 21 8051 Assembly Language Programs.

## Repository structure

```text
8051_Microcontrollers_V_Sem_GitHub/
├── README.md
├── SOURCE_NOTES.md
└── programs/
    ├── 01_bitwise_logical_operations.asm
    ├── 02_8bit_times_16bit_multiplication.asm
    ├── ...
    └── 21_uart_transmit_happy.asm
```

## Program index

| # | File | Topic | Source page |
|---|---|---|---:|
| 01 | `01_bitwise_logical_operations.asm` | AND, OR, EX-OR, NAND, NOR, EX-NOR | 1 |
| 02 | `02_8bit_times_16bit_multiplication.asm` | 8-bit × 16-bit multiplication | 2 |
| 03 | `03_count_zeros_in_8bit_number.asm` | Count zeros | 3 |
| 04 | `04_count_ones_in_8bit_number.asm` | Count ones | 4 |
| 05 | `05_count_ones_and_zeros.asm` | Count ones and zeros | 5 |
| 06 | `06_add_five_8bit_numbers.asm` | Add five 8-bit numbers | 6 |
| 07 | `07_add_five_8bit_decimal_numbers.asm` | Add five decimal/BCD numbers | 7 |
| 08 | `08_add_three_16bit_numbers.asm` | Add three 16-bit numbers | 8 |
| 09 | `09_add_three_16bit_decimal_numbers.asm` | Add three decimal/BCD 16-bit numbers | 9 |
| 10 | `10_search_number_in_list.asm` | Linear search | 10 |
| 11 | `11_check_2outof5_code_high_pattern.asm` | 2-out-of-5 code validation | 11 |
| 12 | `12_check_2outof5_code_low_pattern.asm` | 2-out-of-5 code validation | 12 |
| 13 | `13_find_smallest_in_six_numbers.asm` | Find smallest | 13 |
| 14 | `14_find_largest_in_five_numbers.asm` | Find largest | 14 |
| 15 | `15_sort_five_numbers_ascending.asm` | Ascending sort | 15 |
| 16 | `16_sort_five_numbers_descending.asm` | Descending sort | 16 |
| 17 | `17_timer0_10ms_50percent_pulse.asm` | Timer 0 pulse generation | 17 |
| 18 | `18_timer1_3ms_on_10ms_off.asm` | Timer 1 pulse generation | 18 |
| 19 | `19_timer1_12ms_50percent_pulse.asm` | Timer 1 pulse generation | 19 |
| 20 | `20_uart_receive_divide_by_2.asm` | UART receive + arithmetic | 20 |
| 21 | `21_uart_transmit_happy.asm` | UART transmit | 21 |

## Assembly environment

The programs are written in the style commonly used for the **8051 / Keil A51 assembler**. They use 8051 registers and instructions such as `MOV`, `ADD`, `ADDC`, `DAA`, `MUL AB`, `DIV AB`, `CJNE`, `DJNZ`, timer registers, and serial-port registers.

## Important

These files are based on the handwritten record. A few handwritten lines are ambiguous or contain an apparent omission/inconsistency. Those cases are documented in `SOURCE_NOTES.md` rather than silently presented as exact source text.
