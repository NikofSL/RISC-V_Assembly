# RISC-V Assembly Overview
RISC-V is an open standard instruction set architecture (ISA) based on established reduced instruction set computing (RISC) principles. Here are some key features and instructions commonly used in RISC-V assembly language:

## Registers
* Registers: 32 general-purpose registers ("x0" to "x31"), where "x0" is hardwired to zero.
* Special Registers:
  * "pc": Program Counter.
## Instruction Format
RISC-V has several instruction formats including R-type, I-type, S-type, B-type, U-type, and J-type.

### 1. R-type (Register) Instructions:
* Used for arithmetic and logical operations.
* Example: add rd, rs1, rs2 (rd = rs1 + rs2).

### 2. I-type (Immediate) Instructions:
* Used for immediate arithmetic, load, and CSR instructions.
* Example: addi rd, rs1, imm (rd = rs1 + imm).

### 3. S-type (Store) Instructions:
* Used for store instructions.
* Example: sw rs2, offset(rs1) (store word from rs2 to memory).

### 4. B-type (Branch) Instructions:
* Used for conditional branches.
* Example: beq rs1, rs2, offset (branch if rs1 == rs2).

### 5. U-type (Upper immediate) Instructions:
* Used for upper immediate instructions.
* Example: lui rd, imm (load upper immediate).

### 6. J-type (Jump) Instructions:
* Used for jump instructions.
* Example: jal rd, offset (jump and link).
## Common Instructions
* Arithmetic: add, sub, mul, div.
* Logical: and, or, xor, sll (shift left logical), srl (shift right logical).
* Memory Access: lw (load word), sw (store word), lb (load byte), sb (store byte).
* Control Flow: beq (branch if equal), bne (branch if not equal), jal (jump and link), jalr (jump and link register).

## Example Program
    .data
    msg: .asciiz "Hello, RISC-V!"

    .text
    .globl _start
    _start:
    # Load address of msg into register a0
    la a0, msg

    # Print the string
    call print_string

    # Exit the program
    call exit

 # Simulators
 The website [BRISC-V Simulator](https://ascslab.org/research/briscv/simulator/simulator.html) hosts an online RISC-V simulator developed by the Advanced Computer Systems Lab (ACSL). This simulator allows users to write, compile, and simulate RISC-V assembly code directly in the browser, providing an interactive environment for learning and experimenting with the RISC-V architecture.

 # Linux kernel system calls for all architectures
 The website [https://gpages.juszkiewicz.com.pl](https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html), syscalls-table, provides comprehensive information about Linux system calls across different architectures. It is designed to assist developers in understanding the various system calls available in the Linux kernel and their corresponding numbers, which can vary between different architectures.
