# Single-Cycle MIPS Datapath in Logisim Evolution

This project features a fully functional **Single-Cycle Datapath** for a subset of the **MIPS** Instruction Set Architecture, constructed and simulated using the **Logisim Evolution** software tool.

## Project Overview

The objective of this assignment was to implement a MIPS-like processor datapath and control unit using the fundamental components available in Logisim. This implementation adheres to the single-cycle design principle, where every instruction completes execution in one clock cycle. The design explicitly uses a dedicated **NextPC block** for calculating the next instruction address (for jumps and branches), and the Program Counter (PC) is implemented using the "Register" component with an "Incrementer" for sequential execution.

## Key Features and Supported Instructions

The constructed datapath is capable of executing the following comprehensive set of MIPS instructions, categorized by format:

| Instruction Type | Instructions | Description |
| :--- | :--- | :--- |
| **Jump** | J, JR, JAL | Unconditional jump, Jump Register, Jump and Link |
| **Memory Access** | LW, SW | Load Word, Store Word |
| **Immediate ALU** | ADDIU, ANDI, ORI, XORI | Arithmetic and Logic with Immediate |
| **Register ALU (R-type)** | ADDU, SUBU, AND, OR, XOR, NOR | Register-to-Register Arithmetic and Logic |
| **Shift Operations** | SLL, SRL, SRA | Shift Left/Right Logical, Shift Right Arithmetic |
| **Branch** | BEQ, BNE | Branch if Equal, Branch if Not Equal |

## Implementation Notes

* **PC Implementation:** The Program Counter (PC) is realized using the **Register** component.
* **PC Increment:** Sequential PC incrementing is handled by the **Incrementer** component.
* **NextPC Block:** A dedicated NextPC block is responsible for calculating the target address for jump (J, JR, JAL) and branch (BEQ, BNE) instructions.
* **Memory:** The "RAM" component is utilized for main memory access (LW and SW).
* **ALU Design:** The Arithmetic Logic Unit (ALU) and its control signals (ALUOpCodes) strictly follow the detailed specification provided in the course materials.

---

## Prerequisites

To open and run this project, you need to have **Logisim Evolution** installed on your system.

* **Software:** **Logisim Evolution**
* **Download Link:** [Logisim Evolution GitHub Repository](https://github.com/logisim-evolution/logisim-evolution)

---

## How to Run the Simulation

Follow these steps to load the datapath and run a test program:

1.  **Install Logisim Evolution** from the link provided above.
2.  **Open the Project:** Launch Logisim Evolution and open the main circuit file: `cpu.circ`.
3.  **Load a Program:**
    * Once the circuit is open, select the **RAM** component (Instruction Memory) in the main circuit view.
    * Right-click on the RAM component and select **"Load Image..."**.
    * Browse and select one of the provided MIPS assembly example files (e.g., `branch.s` or `no_branch.s`). *
4.  **Start the Clock:**
    * Go to the **Simulate** menu.
    * Enable the **Ticking Enabled** option (or press Ctrl+K).
    * You can adjust the clock speed under **Simulate** -> **Tick Frequency**.
5.  **Observe Execution:** The processor will now fetch, decode, and execute the instructions loaded into the Instruction Memory. Observe the changes in the PC, Register File, and ALU output to verify correct operation.

