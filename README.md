# Digital System Design & Verification (Verilog)

This repository serves as a comprehensive portfolio of hardware description language (HDL) laboratory sessions, structural modeling, and verification setups developed using Verilog.

## Repository Organization
Each session folder contains structural or behavioral designs paired with their respective verification frameworks:
* `*_design.v` — Core Register-Transfer Level (RTL) hardware architecture logic.
* `*_tb.v` — Custom non-synthesizable testbenches engineered to drive stimulus, handle delays, and validate output waveforms.

---

## Core Portfolio Highlights (Primary Work)
*The modules below have been systematically designed, simulated, and validated with custom testbenches focusing on propagation delays and corner cases:*

### Session 01 (Wire-Basics-and-Vectors)
* **Wire Basics and Vectors:** Implementation of core bus routing, indexing operations, vector part-selection, bitwise operators, vector reversal tracking, concatenation arrays, and sign extension modules.

### Session 02 (Combinational-Logic)
* **Combinational Logic:** Verification of multi-input gate networks, pairwise hardware comparators, reduction operators, and resource-optimized replication operators.

### Session 03 (Multiplexers-and-Arithmetic)
* **Multiplexers and Arithmetic Circuits:** Design and verification of half-adders, full-adders, bit population counters, multi-bit adder-subtractors, and two-bit hardware comparators.

### Session 04 (Sequential-Logic-Fundamentals)
* **Sequential Logic Fundamentals:** RTL validation of latches, standard D-Flip-Flops, D-Flip-Flops with synchronous/asynchronous reset-enable controls, edge detectors, and byte-enable flip-flop structures.

---

## Additional Lab Learning Modules
*Academic reference designs and standard laboratory architectures utilized for verifying behavioral syntax exploration and multi-module hierarchy testing:*

### Session 05 (Shift-Registers-and-Memory)
* **Shift Registers and Memory Blocks:** Structural verification of LFSR (Linear Feedback Shift Registers) setups (8-bit and 32-bit blocks), parity generators, and custom ROM configurations.

### Session 06 (Finite-State-Machines-FSM)
* **Finite State Machines (FSM):** Implementation and behavioral analysis of multi-state Mealy and Moore sequence detectors.

---

## Simulation Environments
* EDA Playground / ModelSim / Industry standard logic simulators.
