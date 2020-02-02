CC      = /usr/bin/gcc
LD	= /usr/bin/ld
CFLAGS  = -m32 -std=gnu99 -ffreestanding -O2 -Wall -Wextra
LDFLAGS = -m elf_i386 -T linker.ld -nostdlib

OBJ = boot.o kernel.o low_level.o printf.o vga16tty.o

kernel.bin: $(OBJ)
	$(LD) $(LDFLAGS) -o kernel.bin $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

.PHONY: clean
clean:
	rm -rf kernel.bin $(OBJ)

.PHONY: run
run:
	qemu-system-i386 -kernel kernel.bin

test: clean kernel.bin run
