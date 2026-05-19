# Full Adder Using Half Adder

## Overview
This project implements a Full Adder using two Half Adders in Verilog HDL.

The design performs binary addition of three input bits:
- A
- B
- Cin (Carry Input)

Outputs:
- Sum
- Cout (Carry Output)

## Files Included
- rtl_code.v
- testbench.v
- waveform.png
- output.png

## Tools Used
- Verilog HDL
- vivado 
- EDA Playground

## Applications
- Arithmetic Logic Units (ALU)
- Digital Processors
- FPGA Design
- VLSI Verification

## Logic Used
Sum = A XOR B XOR Cin

Carry = (A AND B) OR (Cin AND (A XOR B))
