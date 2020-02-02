#include "kernel.h"

// ---------------- VGA16 ----------------

uint32 vga_index;
#define REG_SCREEN_CTRL 0x3D4
#define REG_SCREEN_DATA 0x3D5
uint32 VGA_ADDRESS=0xB8000;
#define BUFSIZE 4000
uint8 vga16tty_color_fg = 7;
uint8 vga16tty_color_bg = 0;


uint8 vga16tty_cursor_get_x() {
  port_byte_out(REG_SCREEN_CTRL, 14);
  int offset = port_byte_in(REG_SCREEN_DATA) << 8;
  port_byte_out(REG_SCREEN_CTRL, 15);
  offset += port_byte_in(REG_SCREEN_DATA);

  return offset % 80;
}

uint8 vga16tty_cursor_get_y() {
  port_byte_out(REG_SCREEN_CTRL, 14);
  int offset = port_byte_in(REG_SCREEN_DATA) << 8;
  port_byte_out(REG_SCREEN_CTRL, 15);
  offset += port_byte_in(REG_SCREEN_DATA);

  return offset / 80;
}

void vga16tty_cursor_set(uint8 x,uint8 y) {
  int offset = x+y*80;
  port_byte_out(REG_SCREEN_CTRL, 14);
  port_byte_out(REG_SCREEN_DATA, (unsigned char)(offset >> 8));
  port_byte_out(REG_SCREEN_CTRL, 15);
  port_byte_out(REG_SCREEN_DATA, offset);
}

#define vga16_cursor_on 0
#define vga16_cursor_off 1
#define vga16_cursor_slow 2
#define vga16_cursor_fast 3

void vga16tty_cursor_mode(uint8 offset,uint8 size,uint8 mode) {
  mode &= 7;
  offset &= 31;
  if (size > offset) size = offset;
  port_byte_out(REG_SCREEN_CTRL, 10);
  port_byte_out(REG_SCREEN_DATA, (offset-size)|(mode<<5));
  port_byte_out(REG_SCREEN_CTRL, 11);
  port_byte_out(REG_SCREEN_DATA, offset);
}

void vga16tty_init() {
  port_byte_out(REG_SCREEN_CTRL, 14);
  int offset = port_byte_in(REG_SCREEN_DATA) << 8;
  port_byte_out(REG_SCREEN_CTRL, 15);
  offset += port_byte_in(REG_SCREEN_DATA);

  vga_pos_x = offset % 80;
  vga_pos_y = offset / 80;
}

enum vga_putchar_mode_modes {
  putchar_WRITE,
  putchar_ESCAPE,
  putchar_ESCAPE_PARAM,
};

uint8 vga_putchar_mode = putchar_WRITE;
uint8 vga_putchar_parameter = 0;
uint8 vga_putchar_parameters[32];
int vga_pos_x2 = 0; // for save/restore
int vga_pos_y2 = 0; // for save/restore

void vga16tty_putchar(unsigned char c) {
  switch (vga_putchar_mode) {
    case putchar_WRITE: {
      switch(c) {
        case 0: break;                 // NUL
        case 1 ... 7: break;             // ignored
        case 8: vga_pos_x--; break;    // DEL
        case 9: {                      // TAB
          vga_pos_x |= 7;
          vga_pos_x++;
        } break;
        case 10: {                     // LF
          vga_pos_x = 0;
          vga_pos_y++;
        } break;
        case 11: break;                // ignored
        case 12: break;                // ignored
        case 13: vga_pos_x = 0; break; // CR
        case 14: vga16tty_color_fg |= 8; break; // SO ( light write mode )
        case 15: vga16tty_color_fg &= 7; break; // SI ( normal write mode )
        case 16 ... 26: break;           // ignored
        case 27: {                     // ESC
          for (int i=0;i<32;i++) vga_putchar_parameters[i] = 0;
          vga_putchar_parameter = 0;
          vga_putchar_mode = putchar_ESCAPE;
        } break;
        case 28 ... 31: break;           // ignored
        case 127: break;               // DEL
        case 128 ... 159: break;         // ignored
        case 255: break;               // DEL
        default: {
          uint16 vga_index = vga_pos_x + vga_pos_y * vga_width;
          vga_buffer = (uint16*)VGA_ADDRESS;
          vga_buffer[vga_index] = ( c & 255 ) | ( vga16tty_color_fg & 15 ) << 8 | ( vga16tty_color_bg & 15 ) << 12;
          vga_pos_x++;
        } break;
      }
    } break;
    case putchar_ESCAPE: {
      switch(c) {
        case 'A': vga_pos_y--; vga_putchar_mode = putchar_WRITE; break;
        case 'B': vga_pos_y++; vga_putchar_mode = putchar_WRITE; break;
        case 'C': vga_pos_x++; vga_putchar_mode = putchar_WRITE; break;
        case 'D': vga_pos_x--; vga_putchar_mode = putchar_WRITE; break;
        case '7': {
          vga_pos_x2 = vga_pos_x;
          vga_pos_y2 = vga_pos_y;
          vga_putchar_mode = putchar_WRITE;
        } break;
        case '8': {
          vga_pos_x = vga_pos_x2;
          vga_pos_y = vga_pos_y2;
          vga_putchar_mode = putchar_WRITE;
        } break;
        case 'K': {
              uint16 start = vga_pos_x + vga_pos_y * vga_width;
              uint16 stop = 79 + vga_pos_y * vga_width;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
        case 'J': {
              uint16 start = vga_pos_x + vga_pos_y * vga_width;
              uint16 stop = vga_height * vga_width - 1;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
        case '[': vga_putchar_mode = putchar_ESCAPE_PARAM; break;
        default: vga_putchar_mode = putchar_WRITE; break;
      }
    } break;
    case putchar_ESCAPE_PARAM: {
      switch(c) {
        case '0'...'9': {
          vga_putchar_parameters[vga_putchar_parameter] *= 10;
          vga_putchar_parameters[vga_putchar_parameter] += ( c - '0' );
        }; break;
        case ':': vga_putchar_parameter++; break;
        case ';': vga_putchar_parameter++; break;
        case 'H': {
          vga_pos_x = vga_putchar_parameters[1];
          vga_pos_y = vga_putchar_parameters[0];
          vga_putchar_mode = putchar_WRITE;
        } break;
        case 'f': {
          vga_pos_x = vga_putchar_parameters[1];
          vga_pos_y = vga_putchar_parameters[0];
          vga_putchar_mode = putchar_WRITE;
        } break;
        case 'A': vga_pos_y -= vga_putchar_parameters[0]; vga_putchar_mode = putchar_WRITE; break;
        case 'B': vga_pos_y += vga_putchar_parameters[0]; vga_putchar_mode = putchar_WRITE; break;
        case 'C': vga_pos_x += vga_putchar_parameters[0]; vga_putchar_mode = putchar_WRITE; break;
        case 'D': vga_pos_x -= vga_putchar_parameters[0]; vga_putchar_mode = putchar_WRITE; break;
        case 's': {
          vga_pos_x2 = vga_pos_x;
          vga_pos_y2 = vga_pos_y;
          vga_putchar_mode = putchar_WRITE;
        } break;
        case 'u': {
          vga_pos_x = vga_pos_x2;
          vga_pos_y = vga_pos_y2;
          vga_putchar_mode = putchar_WRITE;
        } break;
        case 'K': {
          switch (vga_putchar_parameters[0]) {
            case 0: {
              uint16 start = vga_pos_x + vga_pos_y * vga_width;
              uint16 stop = 79 + vga_pos_y * vga_width;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            case 1: {
              uint16 start = vga_pos_y * vga_width;
              uint16 stop = vga_pos_x + vga_pos_y * vga_width;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            case 2: {
              uint16 start = vga_pos_y * vga_width;
              uint16 stop = 79 + vga_pos_y * vga_width;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            default: break;
          } break;
        } break;
        case 'J': {
          switch (vga_putchar_parameters[0]) {
            case 0: {
              uint16 start = vga_pos_x + vga_pos_y * vga_width;
              uint16 stop = vga_height * vga_width - 1;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            case 1: {
              uint16 start = 0;
              uint16 stop = vga_pos_x + vga_pos_y * vga_width;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            case 2: {
              uint16 start = 0;
              uint16 stop = vga_height * vga_width - 1;
              vga_buffer = (uint16*)VGA_ADDRESS;
              for (int i=start; i<=stop; i++) vga_buffer[i] = 0;
              vga_putchar_mode = putchar_WRITE;
            } break;
            default: break;
          } break;
        } break;
        case 'm': {
          for (int i=0; i<=vga_putchar_parameter; i++) {
            switch (vga_putchar_parameters[i]) {
              case 0: vga16tty_color_fg = 7; vga16tty_color_bg = 0 ; break;
              case 30 ... 37: vga16tty_color_fg = vga_putchar_parameters[0] - 30 ; break;
              case 38: vga16tty_color_fg = 7 ; break;
              case 40 ... 47: vga16tty_color_bg = vga_putchar_parameters[0] - 40 ; break;
              case 48: vga16tty_color_bg = 0 ; break;
              case 90 ... 97: vga16tty_color_fg = vga_putchar_parameters[0] - 82 ; break;
              case 100 ... 107: vga16tty_color_bg = vga_putchar_parameters[0] - 92 ; break;
              default: break;
            }
          };
          vga_putchar_mode = putchar_WRITE;
        } break;
        default: vga_putchar_mode = putchar_WRITE; break;
      }
    } break;
    default: vga_putchar_mode = putchar_WRITE; break;
  }

  // cleaning

  if (vga_pos_x < 0) vga_pos_x = 0;
  if (vga_pos_y < 0) vga_pos_y = 0;
  if (vga_pos_x >= vga_width){
    vga_pos_x = 0;
    vga_pos_y++;
  }
  while (vga_pos_y >= vga_height){
    for (int isource=vga_width;isource < vga_width * vga_height;isource++){
      int idest = isource - vga_width;
      vga_buffer[idest] = vga_buffer[isource];
    }
    for (int idest=vga_width * (vga_height-1);idest < vga_width * vga_height;idest++){
      vga_buffer[idest] = NULL;
    }
    vga_pos_y--;
  }

  // update hardware ( cursor )

  vga16tty_cursor_set(vga_pos_x,vga_pos_y);
}

// ---------------- MATH ----------------

uint8 lenH(uint32 val) {
  uint8 len = 0;
  while (val) {
    len++;
    val /= 16;
  }
  if (len==0) return 1;
  return len;
};

void strH(uint32 val, char *buf, uint8 len) {
  while (len) {
    if ((val%16) > 9) {
      buf[len-1] = 'A'+(val%16)-10;
    } else {
      buf[len-1] = '0'+(val%16);
    };
    val /= 16;
    len--;
  };
};

void printH(uint32 val) {
  uint8 len = lenH(val);
  char buf[len+1];
  strH(val,buf,len);
  buf[len] = NULL;
  printf(buf);
};

uint8 lenD(uint32 val) {
  uint8 len = 0;
  while (val) {
    len++;
    val /= 10;
  }
  if (len==0) return 1;
  return len;
};

void strD(uint32 val, char *buf, uint8 len) {
  while (len) {
    buf[len-1] = '0'+(val%10);
    val /= 10;
    len--;
  };
};

void printD(uint32 val) {
  uint8 len = lenD(val);
  char buf[len+1];
  strD(val,buf,len);
  buf[len] = NULL;
  printf(buf);
};

uint8 lenO(uint32 val) {
  uint8 len = 0;
  while (val) {
    len++;
    val /= 8;
  }
  if (len==0) return 1;
  return len;
};

void strO(uint32 val, char *buf, uint8 len) {
  while (len) {
    buf[len-1] = '0'+(val%8);
    val /= 8;
    len--;
  };
};

void printO(uint32 val) {
  uint8 len = lenO(val);
  char buf[len+1];
  strO(val,buf,len);
  buf[len] = NULL;
  printf(buf);
};

uint8 lenB(uint32 val) {
  uint8 len = 0;
  while (val) {
    len++;
    val /= 2;
  }
  if (len==0) return 1;
  return len;
};

void strB(uint32 val, char *buf, uint8 len) {
  while (len) {
    buf[len-1] = '0'+(val%2);
    val /= 2;
    len--;
  };
};

void printB(uint32 val) {
  uint8 len = lenB(val);
  char buf[len+1];
  strB(val,buf,len);
  buf[len] = NULL;
  printf(buf);
};

// ---------------- STRING ----------------

uint32 valH(char* str) {
  uint8 i = 0;
  char a = ' ';
  uint32 val = 0;
  while (str[i]) {
    a = str[i];
    switch (a) {
      case '0' ... '9': {
        val *= 16;
        val += a - '0';
        } break;
      case 'a' ... 'f': {
        val *= 16;
        val += a - 'a' + 10;
        } break;
      case 'A' ... 'F': {
        val *= 16;
        val += a - 'A' + 10;
        } break;
      default: return val;
    };
    i++;
  };
  return val;
};

uint32 valD(char* str) {
  uint8 i = 0;
  char a = ' ';
  uint32 val = 0;
  while (str[i]) {
    a = str[i];
    switch (a) {
      case '0' ... '9': {
        val *= 10;
        val += a - '0';
        } break;
      default: return val;
    };
    i++;
  };
  return val;
};

uint32 valO(char* str) {
  uint8 i = 0;
  char a = ' ';
  uint32 val = 0;
  while (str[i]) {
    a = str[i];
    switch (a) {
      case '0' ... '7': {
        val *= 8;
        val += a - '0';
        } break;
      default: return val;
    };
    i++;
  };
  return val;
};

uint32 valB(char* str) {
  uint8 i = 0;
  char a = ' ';
  uint32 val = 0;
  while (str[i]) {
    a = str[i];
    switch (a) {
      case '0' ... '1': {
        val *= 2;
        val += a - '0';
        } break;
      default: return val;
    };
    i++;
  };
  return val;
};

// ---------------- PRINT ----------------

enum printf_mode_modes {
  printf_WRITE,
  printf_SEQ,
};

uint8 printf_mode = printf_WRITE;

void printf(char* str) {
  int i=0;
  while (str[i]) {
    char c = str[i];
    switch (printf_mode) {
      case printf_WRITE: {
        switch (c) {
          case 92: printf_mode = printf_SEQ; break;
          default: vga16tty_putchar(c); break;
        }
      } break;
      case printf_SEQ: {
        switch (c) {
          case 'a': vga16tty_putchar(0x07); printf_mode = printf_WRITE; break;
          case 'b': vga16tty_putchar(0x08); printf_mode = printf_WRITE; break;
          case 'e': vga16tty_putchar(0x1b); printf_mode = printf_WRITE; break;
          case 'f': vga16tty_putchar(0x0c); printf_mode = printf_WRITE; break;
          case 'n': vga16tty_putchar(0x0a); printf_mode = printf_WRITE; break;
          case 'r': vga16tty_putchar(0x0d); printf_mode = printf_WRITE; break;
          case 't': vga16tty_putchar(0x09); printf_mode = printf_WRITE; break;
          case 'v': vga16tty_putchar(0x0b); printf_mode = printf_WRITE; break;
          case 92:  vga16tty_putchar(0x5c); printf_mode = printf_WRITE; break;
          case 39:  vga16tty_putchar(0x27); printf_mode = printf_WRITE; break;
          case 34:  vga16tty_putchar(0x22); printf_mode = printf_WRITE; break;
          default:  printf_mode = printf_WRITE; vga16tty_putchar(c); break;
        }
      } break;
      default: printf_mode = printf_WRITE; break;
    }
    i++;
  }
}

// ---------------- _MAIN ----------------

void test() {
  printf("\n\nHex: ");
  printH(valH("ABCDEF"));
  printf("\nDec: ");
  printD(valD("1234567890"));
  printf("\nOct: ");
  printO(valO("1234567"));
  printf("\nBin: ");
  printB(valB("111100001111"));
}

void welcome() {
  printf("\n");
  printf("\n");
  printf("Welcome to \e[97mu\e[91mK\e[92me\e[93mr\e[94mn\e[95me\e[96ml\e[0m\n");
  printf("\n");
  printf("loading       : \e7");
  printf("\ndecompressing : ");
  printf("\nlinking       : ");
  printf("\nexecute       : \e8");

  // loading
  for (int i=0;i < 60;i++) {
    for (int i2=0;i2 < 100;i2++) {
      printf(" \b");
    };
  printf(".");
  };
  for (int i2=0;i2 < 10000;i2++) {
    printf(" \b");
  };

  // decompressing
  printf("\e8\eB");
  for (int i=0;i < 60;i++) {
    for (int i2=0;i2 < 1000;i2++) {
      printf(" \b");
    };
  printf(".");
  };
  for (int i2=0;i2 < 30000;i2++) {
    printf(" \b");
  };

  // linking
  printf("\e8\eB\eB");
  for (int i=0;i < 60;i++) {
    for (int i2=0;i2 < 100;i2++) {
      printf(" \b");
    };
  printf(".");
  };
  for (int i2=0;i2 < 10000;i2++) {
    printf(" \b");
  };

  // execute
  printf("\e8\eB\eB\eB");
  for (int i=0;i < 60;i++) {
    for (int i2=0;i2 < 10;i2++) {
      printf(" \b");
    };
  printf(".");
  };
  for (int i2=0;i2 < 50000;i2++) {
    printf(" \b");
  };
};

void main() {
  vga16tty_init();
  vga16tty_cursor_mode(16,2,vga16_cursor_on);
  welcome();
  test();

  while(1){};
}
