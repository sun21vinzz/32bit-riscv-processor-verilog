<<<<<<< HEAD
\# 32-Bit RISC-V Processor in Verilog



\## Overview

This project implements a 32-bit RISC-V processor using Verilog HDL.



The processor supports:

\- Arithmetic operations

\- Logical operations

\- Register file operations

\- Immediate generation

\- Instruction decoding

\- Control unit logic

\- ALU control logic



\## Implemented Modules

\- ALU

\- Register File

\- Program Counter (PC)

\- Instruction Memory

\- Decoder

\- Immediate Generator

\- Control Unit

\- ALU Control Unit



\## Tools Used

\- Icarus Verilog

\- GTKWave

\- Verilog HDL



\## Simulation

Waveforms verified using GTKWave.



\## Folder Structure



```text

rtl/

tb/

programs/

simulation/

waveforms/

```



\## Future Improvements

\- Full CPU datapath integration

\- Data memory

\- Branch execution

\- Pipeline implementation

\- Hazard detection

\- Forwarding unit

## Front-End VLSI Flow

The project includes RTL synthesis using Yosys.

### Implemented Flow
- RTL Design
- Functional Simulation
- GTKWave Verification
- Logic Synthesis
- Gate-Level Netlist Generation
- Gate-Level Verification

### Synthesis Tool
- Yosys

### Generated Outputs
- Synthesized gate-level netlists
- Cell statistics
- Optimized combinational logic

### Verification Tools
- Icarus Verilog
- GTKWave


## Yosys Synthesis

The ALU module was synthesized using Yosys to generate an optimized gate-level netlist.

### Synthesis Output

![Yosys Synthesis](waveforms/yosys_synthesis.png1)


\## Author

Sunil Julian A

=======
# 32bit-riscv-processor-verilog
32-bit RISC-V processor in Verilog with RTL simulation and Yosys synthesis
>>>>>>> 6280964c9edc207717726000df6ea2989e0bc146
