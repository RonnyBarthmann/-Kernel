#ifndef VGA16TTY_H
#define VGA16TTY_H




enum vga_color {
    BLACK,
    BLUE,
    GREEN,
    CYAN,
    RED,
    MAGENTA,
    BROWN,
    GREY,
    DARK_GREY,
    BRIGHT_BLUE,
    BRIGHT_GREEN,
    BRIGHT_CYAN,
    BRIGHT_RED,
    BRIGHT_MAGENTA,
    YELLOW,
    WHITE,
};

int vga_pos_x = 0;
int vga_pos_y = 0;
int vga_width = 80;
int vga_height = 25;

#endif

