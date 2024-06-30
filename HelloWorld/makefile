default: compile

compile:
        riscv64-linux-gnu-as hello.s -o hello.o
        riscv64-linux-gnu-gcc -o hello hello.o -nostdlib -static

run: compile
        qemu-riscv64 hello

clean:
        rm -f hello hello.o
