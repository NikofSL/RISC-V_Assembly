# exit.s

## Explanation: 
1. .global _start:
    * Declares _start as a global symbol, meaning it can be referenced externally, typically used as the entry point.

2. .section .text:
    * Indicates that the following code is in the .text section, which contains executable instructions.

3. _start:
    * The label marking the entry point of the program.

4. li a0, 2:
    * li (load immediate) loads the value 2 into register a0. In this context, a0 is used to hold the return value.

5. li a7, 93:
    * Loads the value 93 into register a7. In RISC-V, a7 is used to hold the system call number. 93 is the code for the exit system call.

6. ecall:
    * ecall (environment call) is used to make a system call to the operating system. Here, it triggers the exit system call with the value in a0 as the exit status.
###Summary:
This RISC-V assembly program sets up an exit system call with a return value of 2 and then makes the system call to terminate the program.
