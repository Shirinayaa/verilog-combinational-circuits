# Verilog Combinational Circuits

## Overview

This project implements combinational digital circuits in Verilog and verifies them using testbenches.

Implemented Circuits:

* 2:1 Multiplexer (MUX)

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

---

# Files

* mux_2x1.v

Testbenches:

* mux_2x1_tb.v

---

## Waveform

2:1 Multiplexer simulation waveform generated using GTKWave.

[MUX 2:1 Waveform](screenshots/mux_2x1_waveform.png)

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

---

# Future Work

* 4:1 Multiplexer
* 1:2 Demultiplexer
* Encoder
* Priority Encoder
* Decoder
* Magnitude Comparator

