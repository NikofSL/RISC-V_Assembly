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

# Emulator
***If you are compiling RISC-V binaries, you can use an emulator like QEMU to run them on your x86_64 machine.
To use an emulator like QEMU to run a RISC-V binary on an x86_64 system, follow these steps:***
### 1. Install the RISC-V Toolchain and QEMU
First, ensure you have the RISC-V GNU toolchain and QEMU installed on your system.
* For Ubuntu/Debian:
```
sudo add-apt-repository ppa:pkg-qemu/qemu
sudo apt-get update
sudo apt install gcc-riscv64-linux-gnu qemu qemu-system-misc qemu-user qemu-user-static
```
* For Fedora:
```
sudo add-apt-repository ppa:pkg-qemu/qemu
sudo apt-get update
sudo dnf install gcc-riscv64-linux-gnu qemu qemu-system-misc qemu-user qemu-user-static
```
Verify QEMU Installation
* After installation, verify that the RISC-V binaries are available:
```
qemu-riscv64 --version
```
### 2. Write Your RISC-V Assembly Program
   * Create a simple RISC-V assembly program, for example, hello.s:
```
.global _start

.section .text
_start:
    addi a7, zero, 93     # syscall number for exit
    addi a0, zero, 0      # exit status 0
    ecall                 # make syscall
```
### 3. Compile the RISC-V Assembly Program
   * Use the RISC-V assembler to compile the assembly program into an object file, then link it into an executable:
```
riscv64-linux-gnu-as hello.s -o hello.o
riscv64-linux-gnu-gcc -o hello hello.o -nostdlib -static
```
### 4. Run the RISC-V Binary Using QEMU
   * Now, use QEMU to emulate a RISC-V environment and run your compiled binary:
```
qemu-riscv64 hello
```

 
 # Simulators
 The website [BRISC-V Simulator](https://ascslab.org/research/briscv/simulator/simulator.html) hosts an online RISC-V simulator developed by the Advanced Computer Systems Lab (ACSL). This simulator allows users to write, compile, and simulate RISC-V assembly code directly in the browser, providing an interactive environment for learning and experimenting with the RISC-V architecture.

 # Linux kernel system calls for all architectures
 The website [https://gpages.juszkiewicz.com.pl](https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html), syscalls-table, provides comprehensive information about Linux system calls across different architectures. It is designed to assist developers in understanding the various system calls available in the Linux kernel and their corresponding numbers, which can vary between different architectures.
