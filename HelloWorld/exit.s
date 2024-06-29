.global _start

.section .text
_start:
        # Return value register + Value
        li a0, 2
        # System call register(a7) + System call code(93 for exit)
        li a7, 93
        # Instruction for triggering interrupt
        ecall
