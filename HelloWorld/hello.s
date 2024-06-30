.global _start

.section .text
_start:
# System call "write()"
# ssize_t write(int fd, const void buf[.count], size_t count);
        #  Where to writee (stdout = 1, stderr = 2)
        li a0, 1
        # Load "hello" in regester
        la a1, hello
        # Numbers of characters in string
        li a2, 13
        # Call system number (write = 64)
        li a7, 64
        # Make the system call
        ecall

# System call "exit()"
# [[noreturn]] void exit(int status);
        li a0, 0
        li a7, 93
        ecall

.section .data
hello: .ascii "Hello World!\n"
