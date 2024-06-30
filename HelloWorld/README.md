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

# System call Info
For further information on system call codes, you can refer to this resource [resource](https://gpages.juszkiewicz.com.pl/syscalls-table/syscalls.html).

# hello.s

## Explanation: 
1. .global _start:
   * Declares _start as a global symbol, which means it can be referenced from other files or used as an entry point by the linker.
2. .section .text:
   * Begins the text section, which contains the executable instructions.
3. _start:
   * Defines the _start label, which is the entry point of the program. This is where execution begins.
4. li a0, 1:
   * Load immediate value 1 into register a0. In the context of the write system call, this means the file descriptor 1, which corresponds to stdout.
5. la a1, hello:
   * Load the address of the label hello into register a1. This is the buffer containing the string to be written.
6. li a2, 13:
   * Load immediate value 13 into register a2. This specifies the number of bytes to write (the length of "Hello World!\n" is 13 characters).
7. li a7, 64:
   * Load immediate value 64 into register a7. This is the syscall number for the write system call.
8. ecall:
   * Triggers the system call with the parameters set in the registers. This will execute the write system call.
9. li a0, 0:
    * Load immediate value 0 into register a0. This is the status code to return on exit (0 typically means success).
10. li a7, 93:
    * Load immediate value 93 into register a7. This is the syscall number for the exit system call.
11. ecall:
    * Triggers the system call to exit the program.
12. .section .data:
    * Begins the data section, which contains initialized data.
13. hello: .ascii "Hello World!\n":
    * Defines a label hello and initializes it with the ASCII string "Hello World!\n".
   
## Summary
This program performs the following actions:

1. Writes the string "Hello World!\n" to the standard output using the write system call.
2. Exits the program using the exit system call.
