SRCS = $(shell find -name '*.[cS]')
OBJS = $(addsuffix .o,$(basename $(SRCS)))

CC = gcc
LD = ld

ASFLAGS = -m32
CFLAGS = -m32 -Wall -g -fno-stack-protector -nostdinc
LDFLAGS = -melf_i386 -Tlinker.ld

kernel.bin: $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

%.o: %.S
	$(CC) $(ASFLAGS) -c -o $@ $^

clean:
	rm -f *.o *.bin

run:
	qemu-system-i386 -kernel kernel.bin

test: clean kernel.bin run

.PHONY: clean
.PHONY: run

