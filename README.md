# Verilog Combinational Circuits

## Overview

This project implements combinational digital circuits in Verilog and verifies them using testbenches.

Implemented Circuits:

* 2:1 Multiplexer (MUX)
* 4:1 Multiplexer (MUX)

## Learning Objectives

* Understand combinational circuit design
* Learn selection logic in digital systems
* Create and run testbenches
* Simulate digital circuits using Icarus Verilog
* Analyze waveforms using GTKWave

---

# 2:1 Multiplexer (MUX)

Logic:

Y = (I0 & ~S) | (I1 & S)

Truth Table:

| S | I0 | I1 | Y |
| - | -- | -- | - |
| 0 | 0  | 0  | 0 |
| 0 | 0  | 1  | 0 |
| 0 | 1  | 0  | 1 |
| 0 | 1  | 1  | 1 |
| 1 | 0  | 0  | 0 |
| 1 | 0  | 1  | 1 |
| 1 | 1  | 0  | 0 |
| 1 | 1  | 1  | 1 |

### Description

A Multiplexer (MUX) is a combinational circuit that selects one of several input signals and forwards it to a single output.

Inputs:

* I0
* I1
* S (Select Line)

Output:

* Y

When S = 0, the output follows I0.

When S = 1, the output follows I1.

# 4:1 Multiplexer (MUX)

Logic:

Y = (~S1 & ~S0 & I0)
| (~S1 &  S0 & I1)
| ( S1 & ~S0 & I2)
| ( S1 &  S0 & I3)

Truth Table:

| S1 | S0 | Y  |
| -- | -- | -- |
| 0  | 0  | I0 |
| 0  | 1  | I1 |
| 1  | 0  | I2 |
| 1  | 1  | I3 |

### Description

A 4:1 Multiplexer (MUX) is a combinational circuit that selects one of four input signals and forwards it to a single output.

Inputs:

* I0
* I1
* I2
* I3
* S1
* S0

Output:

* Y

The select lines determine which input is connected to the output.

Selection:

* S1S0 = 00 → Y = I0
* S1S0 = 01 → Y = I1
* S1S0 = 10 → Y = I2
* S1S0 = 11 → Y = I3

The 4:1 MUX extends the concept of a 2:1 MUX by using two select lines to choose between four inputs.

---

# Files

* mux_2x1.v
* mux_4x1.v

Testbenches:

* mux_2x1_tb.v
* mux_4x1_tb.v

---

## Waveform

2:1 Multiplexer simulation waveform generated using GTKWave.

[MUX 2:1 Waveform](screenshots/mux_2x1_waveform.png)

4:1 Multiplexer simulation waveform generated using GTKWave.
[MUX 4:1 Waveform](screenshots/mux_4x1_waveform.png)

---

# Tools Used

* Verilog HDL
* Icarus Verilog
* GTKWave
* VS Code

---

# Concepts Learned

* Combinational Logic
* Multiplexer Design
* Selection Logic
* Boolean Expressions
* Testbenches
* reg vs wire
* Unit Under Test (UUT)
* Waveform Generation
* GTKWave Analysis
* 4:1 Multiplexer Design
* Multiple Select Lines
* For Loops in Testbenches
* Concatenation ({})
* Binary Literals
* Case Statements
* Self-Checking Testbenches

---

# Future Work

* 1:2 Demultiplexer
* Encoder
* Priority Encoder
* Decoder
* Magnitude Comparator

