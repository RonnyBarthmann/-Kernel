#ifndef KERNEL_H
#define KERNEL_H

typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;

uint16* vga_buffer;
void kprintf(char* str);

#define NULL 0

#include "vga16tty.h"
#include "printf.h"
#include "low_level.h"

#endif
