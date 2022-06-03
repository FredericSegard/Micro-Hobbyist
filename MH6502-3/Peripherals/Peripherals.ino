/*
Register Select is actually an output to indicate which data type is being sent out to the CPU's VIA
  R R R
  S S S
  2 1 0
  -----
  0 0 0 = Keyboard data
  0 0 1 = Mouse status (buttons and wheel)
  0 1 0 = Mouse X movement
  0 1 1 = Mouse Y movement
  1 0 0 = NES controller 1
  1 0 1 = NES controller 2  
*/

// Include declarations
#include <PS2KeyAdvanced.h>
#include <PS2KeyMap.h>
#include <PS2Mouse.h>

// Constants
#define timingMicroSeconds 1    // Number of microseconds for interrupt pulse

// Pin declarations
#define mcuInterrupt 0          // Chip pin 2
#define registerSelect0 5       // Chip pin 11
#define registerSelect1 6       // Chip pin 12
#define registerSelect2 1       // Chip pin 3
#define ps2KeyboardClock 2      // Chip pin 4
#define ps2KeyboardData 19      // Chip pin 28 (A5)
#define ps2MouseClock 3         // Chip pin 5
#define ps2MouseData 18         // Chip pin 27 (A4)
#define nesClock 13             // Chip pin 19
#define nesLatch 12             // Chip pin 18
#define nesData 11              // Chip pin 17
#define nesData2 4              // Chip pin 6

// NES buttons
#define A_BUTTON 0
#define B_BUTTON 1
#define SELECT_BUTTON 2
#define START_BUTTON 3
#define UP_BUTTON 4
#define DOWN_BUTTON 5
#define LEFT_BUTTON 6
#define RIGHT_BUTTON 7

byte dataPins[] = {17, 16, 15, 14, 10, 9, 8, 7};  // Chips pin # 26,25,24,23,16,15,14,13 LSB to MSB

// Global variables
int sizeOfScanCode = 0;
int sizeOfIgnoreHandler = 0;
int code = 0;
byte ascii = 0;
byte mouseStatus = 0;
byte lastMouseStatus = 0;
byte mouseX = 0;
byte lastMouseX = 0;
byte mouseY = 0;
byte lastMouseY = 0;
byte nes1 = 0;
byte lastNes1 = 0;
byte nes2 = 0;
byte lastNes2 = 0;

bool keyboardPresent;
bool mousePresent;

// Object declarations
PS2KeyAdvanced keyboard;
PS2KeyMap keymap;
PS2Mouse mouse(ps2MouseClock, ps2MouseData);

// Scan code remapping table
int scanCode[][2] = {
  {PS2_KEY_HOME     + PS2_FUNCTION, 0x01 },
  {PS2_KEY_END      + PS2_FUNCTION, 0x02 },
  {PS2_KEY_PGUP     + PS2_FUNCTION, 0x03 },
  {PS2_KEY_PGDN     + PS2_FUNCTION, 0x04 },
  {PS2_KEY_INSERT   + PS2_FUNCTION, 0x05 },
  {PS2_KEY_MENU     + PS2_FUNCTION, 0x06 },
  {PS2_KEY_L_GUI    + PS2_FUNCTION + PS2_GUI, 0x07 },
  {PS2_KEY_R_GUI    + PS2_FUNCTION + PS2_GUI, 0x07 },
  {PS2_KEY_PRTSCR   + PS2_FUNCTION, 0x0A },
  {PS2_KEY_SYSRQ    + PS2_FUNCTION + PS2_ALT, 0x0B },
  {PS2_KEY_SYSRQ    + PS2_FUNCTION + PS2_ALT_GR, 0x0B },
  {PS2_KEY_PAUSE    + PS2_FUNCTION, 0x0C},
  {PS2_KEY_BREAK    + PS2_FUNCTION + PS2_CTRL, 0x0E },
  {PS2_KEY_F1       + PS2_FUNCTION, 0x0F },
  {PS2_KEY_F2       + PS2_FUNCTION, 0x10 },
  {PS2_KEY_F3       + PS2_FUNCTION, 0x11 },
  {PS2_KEY_F4       + PS2_FUNCTION, 0x12 },
  {PS2_KEY_F5       + PS2_FUNCTION, 0x13 },
  {PS2_KEY_F6       + PS2_FUNCTION, 0x14 },
  {PS2_KEY_F7       + PS2_FUNCTION, 0x15 },
  {PS2_KEY_F8       + PS2_FUNCTION, 0x16 },
  {PS2_KEY_F9       + PS2_FUNCTION, 0x17 },
  {PS2_KEY_F10      + PS2_FUNCTION, 0x18 },
  {PS2_KEY_F11      + PS2_FUNCTION, 0x19 },
  {PS2_KEY_F12      + PS2_FUNCTION, 0x1A },
  {PS2_KEY_L_ARROW  + PS2_FUNCTION, 0x1C },
  {PS2_KEY_R_ARROW  + PS2_FUNCTION, 0x1D },
  {PS2_KEY_UP_ARROW + PS2_FUNCTION, 0x1E },
  {PS2_KEY_DN_ARROW + PS2_FUNCTION, 0x1F },
  
  {PS2_KEY_F1       + PS2_SHIFT + PS2_FUNCTION, 0x80 },
  {PS2_KEY_F2       + PS2_SHIFT + PS2_FUNCTION, 0x81 },
  {PS2_KEY_F3       + PS2_SHIFT + PS2_FUNCTION, 0x82 },
  {PS2_KEY_F4       + PS2_SHIFT + PS2_FUNCTION, 0x83 },
  {PS2_KEY_F5       + PS2_SHIFT + PS2_FUNCTION, 0x84 },
  {PS2_KEY_F6       + PS2_SHIFT + PS2_FUNCTION, 0x85 },
  {PS2_KEY_F7       + PS2_SHIFT + PS2_FUNCTION, 0x86 },
  {PS2_KEY_F8       + PS2_SHIFT + PS2_FUNCTION, 0x87 },
  {PS2_KEY_F9       + PS2_SHIFT + PS2_FUNCTION, 0x88 },
  {PS2_KEY_F10      + PS2_SHIFT + PS2_FUNCTION, 0x89 },
  {PS2_KEY_F11      + PS2_SHIFT + PS2_FUNCTION, 0x8A },
  {PS2_KEY_F12      + PS2_SHIFT + PS2_FUNCTION, 0x8B },
  {PS2_KEY_PRTSCR   + PS2_SHIFT + PS2_FUNCTION, 0x8C },

  {PS2_KEY_0        + PS2_CTRL, 0x8D },
  {PS2_KEY_KP0      + PS2_CTRL, 0x8D },
  {PS2_KEY_1        + PS2_CTRL, 0x8E },
  {PS2_KEY_KP1      + PS2_CTRL, 0x8E },
  {PS2_KEY_2        + PS2_CTRL, 0x8F },
  {PS2_KEY_KP2      + PS2_CTRL, 0x8F },
  {PS2_KEY_3        + PS2_CTRL, 0x90 },
  {PS2_KEY_KP3      + PS2_CTRL, 0x90 },
  {PS2_KEY_4        + PS2_CTRL, 0x91 },
  {PS2_KEY_KP4      + PS2_CTRL, 0x91 },
  {PS2_KEY_5        + PS2_CTRL, 0x92 },
  {PS2_KEY_KP5      + PS2_CTRL, 0x92 },
  {PS2_KEY_6        + PS2_CTRL, 0x93 },
  {PS2_KEY_KP6      + PS2_CTRL, 0x93 },
  {PS2_KEY_7        + PS2_CTRL, 0x94 },
  {PS2_KEY_KP7      + PS2_CTRL, 0x94 },
  {PS2_KEY_8        + PS2_CTRL, 0x95 },
  {PS2_KEY_KP8      + PS2_CTRL, 0x95 },
  {PS2_KEY_9        + PS2_CTRL, 0x96 },
  {PS2_KEY_KP9      + PS2_CTRL, 0x96 },
  {PS2_KEY_A        + PS2_CTRL, 0x97 },
  {PS2_KEY_B        + PS2_CTRL, 0x98 },
  {PS2_KEY_C        + PS2_CTRL, 0x99 },
  {PS2_KEY_D        + PS2_CTRL, 0x9A },
  {PS2_KEY_E        + PS2_CTRL, 0x9B },
  {PS2_KEY_F        + PS2_CTRL, 0x9C },
  {PS2_KEY_G        + PS2_CTRL, 0x9D },
  {PS2_KEY_H        + PS2_CTRL, 0x9E },
  {PS2_KEY_I        + PS2_CTRL, 0x9F },
  {PS2_KEY_J        + PS2_CTRL, 0xA0 },
  {PS2_KEY_K        + PS2_CTRL, 0xA1 },
  {PS2_KEY_L        + PS2_CTRL, 0xA2 },
  {PS2_KEY_M        + PS2_CTRL, 0xA3 },
  {PS2_KEY_N        + PS2_CTRL, 0xA4 },
  {PS2_KEY_O        + PS2_CTRL, 0xA5 },
  {PS2_KEY_P        + PS2_CTRL, 0xA6 },
  {PS2_KEY_Q        + PS2_CTRL, 0xA7 },
  {PS2_KEY_R        + PS2_CTRL, 0xA8 },
  {PS2_KEY_S        + PS2_CTRL, 0xA9 },
  {PS2_KEY_T        + PS2_CTRL, 0xAA },
  {PS2_KEY_U        + PS2_CTRL, 0xAB },
  {PS2_KEY_V        + PS2_CTRL, 0xAC },
  {PS2_KEY_W        + PS2_CTRL, 0xAD },
  {PS2_KEY_X        + PS2_CTRL, 0xAE },
  {PS2_KEY_Y        + PS2_CTRL, 0xAF },
  {PS2_KEY_Z        + PS2_CTRL, 0xB0 },
  {PS2_KEY_F1       + PS2_CTRL + PS2_FUNCTION, 0xB1 },
  {PS2_KEY_F2       + PS2_CTRL + PS2_FUNCTION, 0xB2 },
  {PS2_KEY_F3       + PS2_CTRL + PS2_FUNCTION, 0xB3 },
  {PS2_KEY_F4       + PS2_CTRL + PS2_FUNCTION, 0xB4 },
  {PS2_KEY_F5       + PS2_CTRL + PS2_FUNCTION, 0xB5 },
  {PS2_KEY_F6       + PS2_CTRL + PS2_FUNCTION, 0xB6 },
  {PS2_KEY_F7       + PS2_CTRL + PS2_FUNCTION, 0xB7 },
  {PS2_KEY_F8       + PS2_CTRL + PS2_FUNCTION, 0xB8 },
  {PS2_KEY_F9       + PS2_CTRL + PS2_FUNCTION, 0xB9 },
  {PS2_KEY_F10      + PS2_CTRL + PS2_FUNCTION, 0xBA },
  {PS2_KEY_F11      + PS2_CTRL + PS2_FUNCTION, 0xBB },
  {PS2_KEY_F12      + PS2_CTRL + PS2_FUNCTION, 0xBC },
  {PS2_KEY_HOME     + PS2_CTRL + PS2_FUNCTION, 0xBD },
  {PS2_KEY_END      + PS2_CTRL + PS2_FUNCTION, 0xBE },
  {PS2_KEY_PGUP     + PS2_CTRL + PS2_FUNCTION, 0xBF },
  {PS2_KEY_PGDN     + PS2_CTRL + PS2_FUNCTION, 0xC0 },
  {PS2_KEY_L_ARROW  + PS2_CTRL + PS2_FUNCTION, 0xC1 },
  {PS2_KEY_R_ARROW  + PS2_CTRL + PS2_FUNCTION, 0xC2 },
  {PS2_KEY_UP_ARROW + PS2_CTRL + PS2_FUNCTION, 0xC3 },
  {PS2_KEY_DN_ARROW + PS2_CTRL + PS2_FUNCTION, 0xC4 },
  {PS2_KEY_ESC      + PS2_CTRL + PS2_FUNCTION, 0xC5 },
  {PS2_KEY_BS       + PS2_CTRL + PS2_FUNCTION, 0xC6 },
  {PS2_KEY_TAB      + PS2_CTRL + PS2_FUNCTION, 0xC7 },
  {PS2_KEY_ENTER    + PS2_CTRL + PS2_FUNCTION, 0xC8 },
  {PS2_KEY_PRTSCR   + PS2_CTRL + PS2_FUNCTION, 0xC9 },

  {PS2_KEY_0        + PS2_ALT, 0xCA },
  {PS2_KEY_KP0      + PS2_ALT, 0xCA },
  {PS2_KEY_1        + PS2_ALT, 0xCB },
  {PS2_KEY_KP1      + PS2_ALT, 0xCB },
  {PS2_KEY_2        + PS2_ALT, 0xCC },
  {PS2_KEY_KP2      + PS2_ALT, 0xCC },
  {PS2_KEY_3        + PS2_ALT, 0xCD },
  {PS2_KEY_KP3      + PS2_ALT, 0xCD },
  {PS2_KEY_4        + PS2_ALT, 0xCE },
  {PS2_KEY_KP4      + PS2_ALT, 0xCE },
  {PS2_KEY_5        + PS2_ALT, 0xCF },
  {PS2_KEY_KP5      + PS2_ALT, 0xCF },
  {PS2_KEY_6        + PS2_ALT, 0xD0 },
  {PS2_KEY_KP6      + PS2_ALT, 0xD0 },
  {PS2_KEY_7        + PS2_ALT, 0xD1 },
  {PS2_KEY_KP7      + PS2_ALT, 0xD1 },
  {PS2_KEY_8        + PS2_ALT, 0xD2 },
  {PS2_KEY_KP8      + PS2_ALT, 0xD2 },
  {PS2_KEY_9        + PS2_ALT, 0xD3 },
  {PS2_KEY_KP9      + PS2_ALT, 0xD3 },
  {PS2_KEY_A        + PS2_ALT, 0xD4 },
  {PS2_KEY_B        + PS2_ALT, 0xD5 },
  {PS2_KEY_C        + PS2_ALT, 0xD6 },
  {PS2_KEY_D        + PS2_ALT, 0xD7 },
  {PS2_KEY_E        + PS2_ALT, 0xD8 },
  {PS2_KEY_F        + PS2_ALT, 0xD9 },
  {PS2_KEY_G        + PS2_ALT, 0xDA },
  {PS2_KEY_H        + PS2_ALT, 0xDB },
  {PS2_KEY_I        + PS2_ALT, 0xDC },
  {PS2_KEY_J        + PS2_ALT, 0xDD },
  {PS2_KEY_K        + PS2_ALT, 0xDE },
  {PS2_KEY_L        + PS2_ALT, 0xDF },
  {PS2_KEY_M        + PS2_ALT, 0xE0 },
  {PS2_KEY_N        + PS2_ALT, 0xE1 },
  {PS2_KEY_O        + PS2_ALT, 0xE2 },
  {PS2_KEY_P        + PS2_ALT, 0xE3 },
  {PS2_KEY_Q        + PS2_ALT, 0xE4 },
  {PS2_KEY_R        + PS2_ALT, 0xE5 },
  {PS2_KEY_S        + PS2_ALT, 0xE6 },
  {PS2_KEY_T        + PS2_ALT, 0xE7 },
  {PS2_KEY_U        + PS2_ALT, 0xE8 },
  {PS2_KEY_V        + PS2_ALT, 0xE9 },
  {PS2_KEY_W        + PS2_ALT, 0xEA },
  {PS2_KEY_X        + PS2_ALT, 0xEB },
  {PS2_KEY_Y        + PS2_ALT, 0xEC },
  {PS2_KEY_Z        + PS2_ALT, 0xED },
  {PS2_KEY_F1       + PS2_ALT + PS2_FUNCTION, 0xEE },
  {PS2_KEY_F2       + PS2_ALT + PS2_FUNCTION, 0xEF },
  {PS2_KEY_F3       + PS2_ALT + PS2_FUNCTION, 0xF0 },
  {PS2_KEY_F4       + PS2_ALT + PS2_FUNCTION, 0xF1 },
  {PS2_KEY_F5       + PS2_ALT + PS2_FUNCTION, 0xF2 },
  {PS2_KEY_F6       + PS2_ALT + PS2_FUNCTION, 0xF3 },
  {PS2_KEY_F7       + PS2_ALT + PS2_FUNCTION, 0xF4 },
  {PS2_KEY_F8       + PS2_ALT + PS2_FUNCTION, 0xF5 },
  {PS2_KEY_F9       + PS2_ALT + PS2_FUNCTION, 0xF6 },
  {PS2_KEY_F10      + PS2_ALT + PS2_FUNCTION, 0xF7 },
  {PS2_KEY_F11      + PS2_ALT + PS2_FUNCTION, 0xF8 },
  {PS2_KEY_F12      + PS2_ALT + PS2_FUNCTION, 0xF9 },
  {PS2_KEY_ESC      + PS2_ALT + PS2_FUNCTION, 0xFA },
  {PS2_KEY_BS       + PS2_ALT + PS2_FUNCTION, 0xFB },
  {PS2_KEY_TAB      + PS2_ALT + PS2_FUNCTION, 0xFC },
  {PS2_KEY_ENTER    + PS2_ALT + PS2_FUNCTION, 0xFD },
  {PS2_KEY_SPACE    + PS2_ALT + PS2_FUNCTION, 0xFE },

  {PS2_KEY_0        + PS2_ALT_GR, 0xCA },
  {PS2_KEY_KP0      + PS2_ALT_GR, 0xCA },
  {PS2_KEY_1        + PS2_ALT_GR, 0xCB },
  {PS2_KEY_KP1      + PS2_ALT_GR, 0xCB },
  {PS2_KEY_2        + PS2_ALT_GR, 0xCC },
  {PS2_KEY_KP2      + PS2_ALT_GR, 0xCC },
  {PS2_KEY_3        + PS2_ALT_GR, 0xCD },
  {PS2_KEY_KP3      + PS2_ALT_GR, 0xCD },
  {PS2_KEY_4        + PS2_ALT_GR, 0xCE },
  {PS2_KEY_KP4      + PS2_ALT_GR, 0xCE },
  {PS2_KEY_5        + PS2_ALT_GR, 0xCF },
  {PS2_KEY_KP5      + PS2_ALT_GR, 0xCF },
  {PS2_KEY_6        + PS2_ALT_GR, 0xD0 },
  {PS2_KEY_KP6      + PS2_ALT_GR, 0xD0 },
  {PS2_KEY_7        + PS2_ALT_GR, 0xD1 },
  {PS2_KEY_KP7      + PS2_ALT_GR, 0xD1 },
  {PS2_KEY_8        + PS2_ALT_GR, 0xD2 },
  {PS2_KEY_KP8      + PS2_ALT_GR, 0xD2 },
  {PS2_KEY_9        + PS2_ALT_GR, 0xD3 },
  {PS2_KEY_KP9      + PS2_ALT_GR, 0xD3 },
  {PS2_KEY_A        + PS2_ALT_GR, 0xD4 },
  {PS2_KEY_B        + PS2_ALT_GR, 0xD5 },
  {PS2_KEY_C        + PS2_ALT_GR, 0xD6 },
  {PS2_KEY_D        + PS2_ALT_GR, 0xD7 },
  {PS2_KEY_E        + PS2_ALT_GR, 0xD8 },
  {PS2_KEY_F        + PS2_ALT_GR, 0xD9 },
  {PS2_KEY_G        + PS2_ALT_GR, 0xDA },
  {PS2_KEY_H        + PS2_ALT_GR, 0xDB },
  {PS2_KEY_I        + PS2_ALT_GR, 0xDC },
  {PS2_KEY_J        + PS2_ALT_GR, 0xDD },
  {PS2_KEY_K        + PS2_ALT_GR, 0xDE },
  {PS2_KEY_L        + PS2_ALT_GR, 0xDF },
  {PS2_KEY_M        + PS2_ALT_GR, 0xE0 },
  {PS2_KEY_N        + PS2_ALT_GR, 0xE1 },
  {PS2_KEY_O        + PS2_ALT_GR, 0xE2 },
  {PS2_KEY_P        + PS2_ALT_GR, 0xE3 },
  {PS2_KEY_Q        + PS2_ALT_GR, 0xE4 },
  {PS2_KEY_R        + PS2_ALT_GR, 0xE5 },
  {PS2_KEY_S        + PS2_ALT_GR, 0xE6 },
  {PS2_KEY_T        + PS2_ALT_GR, 0xE7 },
  {PS2_KEY_U        + PS2_ALT_GR, 0xE8 },
  {PS2_KEY_V        + PS2_ALT_GR, 0xE9 },
  {PS2_KEY_W        + PS2_ALT_GR, 0xEA },
  {PS2_KEY_X        + PS2_ALT_GR, 0xEB },
  {PS2_KEY_Y        + PS2_ALT_GR, 0xEC },
  {PS2_KEY_Z        + PS2_ALT_GR, 0xED },
  {PS2_KEY_F1       + PS2_ALT_GR + PS2_FUNCTION, 0xEE },
  {PS2_KEY_F2       + PS2_ALT_GR + PS2_FUNCTION, 0xEF },
  {PS2_KEY_F3       + PS2_ALT_GR + PS2_FUNCTION, 0xF0 },
  {PS2_KEY_F4       + PS2_ALT_GR + PS2_FUNCTION, 0xF1 },
  {PS2_KEY_F5       + PS2_ALT_GR + PS2_FUNCTION, 0xF2 },
  {PS2_KEY_F6       + PS2_ALT_GR + PS2_FUNCTION, 0xF3 },
  {PS2_KEY_F7       + PS2_ALT_GR + PS2_FUNCTION, 0xF4 },
  {PS2_KEY_F8       + PS2_ALT_GR + PS2_FUNCTION, 0xF5 },
  {PS2_KEY_F9       + PS2_ALT_GR + PS2_FUNCTION, 0xF6 },
  {PS2_KEY_F10      + PS2_ALT_GR + PS2_FUNCTION, 0xF7 },
  {PS2_KEY_F11      + PS2_ALT_GR + PS2_FUNCTION, 0xF8 },
  {PS2_KEY_F12      + PS2_ALT_GR + PS2_FUNCTION, 0xF9 },
  {PS2_KEY_ESC      + PS2_ALT_GR + PS2_FUNCTION, 0xFA },
  {PS2_KEY_BS       + PS2_ALT_GR + PS2_FUNCTION, 0xFB },
  {PS2_KEY_TAB      + PS2_ALT_GR + PS2_FUNCTION, 0xFC },
  {PS2_KEY_ENTER    + PS2_ALT_GR + PS2_FUNCTION, 0xFD },
  {PS2_KEY_SPACE    + PS2_ALT_GR + PS2_FUNCTION, 0xFE },
  
  {PS2_FUNCTION + PS2_CTRL + PS2_ALT + PS2_KEY_DELETE, 0xFF },
  {PS2_FUNCTION + PS2_CTRL + PS2_ALT_GR + PS2_KEY_DELETE, 0xFF }
};

// Scan code ignore handler
int ignoreHandler[] = {
    PS2_KEY_ACK,
    PS2_SHIFT + PS2_FUNCTION + PS2_KEY_L_SHIFT,
    PS2_SHIFT + PS2_FUNCTION + PS2_KEY_R_SHIFT,
    PS2_CTRL + PS2_FUNCTION + PS2_KEY_L_CTRL,
    PS2_CTRL + PS2_FUNCTION + PS2_KEY_R_CTRL,
    PS2_ALT + PS2_FUNCTION + PS2_KEY_L_ALT,
    PS2_ALT + PS2_FUNCTION + PS2_KEY_R_ALT,
    PS2_ALT_GR + PS2_FUNCTION + PS2_KEY_L_ALT,
    PS2_ALT_GR + PS2_FUNCTION + PS2_KEY_R_ALT,
    PS2_CTRL + PS2_ALT + PS2_FUNCTION + PS2_KEY_L_CTRL,
    PS2_CTRL + PS2_ALT + PS2_FUNCTION + PS2_KEY_L_ALT,
    PS2_CTRL + PS2_ALT_GR + PS2_FUNCTION + PS2_KEY_R_CTRL,
    PS2_CTRL + PS2_ALT_GR + PS2_FUNCTION + PS2_KEY_R_ALT,
    PS2_FUNCTION + PS2_KEY_NUM,
    PS2_CAPS + PS2_FUNCTION,
    PS2_CAPS + PS2_FUNCTION + PS2_KEY_CAPS,
    PS2_FUNCTION + PS2_KEY_SCROLL
};



//                            _   _  __                 _                                  _ 
//  _ __    ___    __ _    __| | | |/ /   ___   _   _  | |__     ___     __ _   _ __    __| |
// | '__|  / _ \  / _` |  / _` | | ' /   / _ \ | | | | | '_ \   / _ \   / _` | | '__|  / _` |
// | |    |  __/ | (_| | | (_| | | . \  |  __/ | |_| | | |_) | | (_) | | (_| | | |    | (_| |
// |_|     \___|  \__,_|  \__,_| |_|\_\  \___|  \__, | |_.__/   \___/   \__,_| |_|     \__,_|
//                                              |___/                                        

void readKeyboard() {

  ascii = 0;  // Clear ASCII buffer

  // Execute this if a key has been pressed
  if ( keyboard.available() ) {

    // Read scan code and convert it to ASCII
    code = keyboard.read();               // Read scan code
    ascii = keymap.remapKey( code );      // Convert to ASCII
    if (ascii == PS2_KEY_ACK) ascii = 0;  // Ignore ACK response

    // Remap keys and place them in unused ASCII spaces (bellow 0x20 and above 0x80)
    for (int i = 0; i < sizeOfScanCode; i++) {
      if (code == scanCode[i][0]) ascii = scanCode[i][1];
      if (code == (scanCode[i][0] + PS2_CAPS)) ascii = scanCode[i][1];
    }

    // Ignore unwanted key presses, or keyboard feedback messages
    for (int i = 0; i < sizeOfIgnoreHandler; i++) {
      if (code == ignoreHandler[i]) ascii = 0;
    }
  }
}


//                            _   __  __                              
//  _ __    ___    __ _    __| | |  \/  |   ___    _   _   ___    ___ 
// | '__|  / _ \  / _` |  / _` | | |\/| |  / _ \  | | | | / __|  / _ \
// | |    |  __/ | (_| | | (_| | | |  | | | (_) | | |_| | \__ \ |  __/
// |_|     \___|  \__,_|  \__,_| |_|  |_|  \___/   \__,_| |___/  \___|
//
                                                                    
void readMouse() {
  
  // Give me data!
  MouseData data = mouse.readData();

  // Read buttons, removing overflow and direction
  mouseStatus = data.status &0x07;
  
  // Read X & Y movements (direction is derived from 2s compliment negative number)
  mouseX = data.position.x;
  mouseY = data.position.y;

  // Read wheel - Place wheel byte in status byte, replacing overflow bits
  if(data.wheel == 1) mouseStatus = mouseStatus | 0x40;
  if(data.wheel == -1) mouseStatus = mouseStatus | 0x80;
}


//                            _   _   _                 ____                   _                    _   _               
//  _ __    ___    __ _    __| | | \ | |   ___   ___   / ___|   ___    _ __   | |_   _ __    ___   | | | |   ___   _ __ 
// | '__|  / _ \  / _` |  / _` | |  \| |  / _ \ / __| | |      / _ \  | '_ \  | __| | '__|  / _ \  | | | |  / _ \ | '__|
// | |    |  __/ | (_| | | (_| | | |\  | |  __/ \__ \ | |___  | (_) | | | | | | |_  | |    | (_) | | | | | |  __/ | |   
// |_|     \___|  \__,_|  \__,_| |_| \_|  \___| |___/  \____|  \___/  |_| |_|  \__| |_|     \___/  |_| |_|  \___| |_|   
//                                                                                                                      

void readNesController() 
{  
  // Pre-load a variable with all 0's which assumes all buttons are not pressed. But while we cycle through the bits,
  // if we detect a LOW, which is a 0, we set that bit. In the end, we find all the buttons states at once.
  nes1 = 0;
  nes2 = 0;
    
  // Quickly pulse the nesLatch so that the register grab what it see on its parallel data pins.
  digitalWrite(nesLatch, HIGH);
  digitalWrite(nesLatch, LOW);
 
  // Upon latching, the first bit is available to look at, which is the state of the A button. 
  if (digitalRead(nesData) == LOW) bitSet(nes1, A_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, A_BUTTON);
    
  // Clock the next bit which is the B button and determine its state just like we did above.
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, B_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, B_BUTTON);

  // Select button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, SELECT_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, SELECT_BUTTON);

  // Start button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, START_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, START_BUTTON);

  // Up button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, UP_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, UP_BUTTON);
    
  // Down button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, DOWN_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, DOWN_BUTTON);

  // Left button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, LEFT_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, LEFT_BUTTON);

  // Right button
  digitalWrite(nesClock, HIGH);
  digitalWrite(nesClock, LOW);
  if (digitalRead(nesData) == LOW) bitSet(nes1, RIGHT_BUTTON);
  if (digitalRead(nesData2) == LOW) bitSet(nes2, RIGHT_BUTTON);
    
}


//               _                   
//  ___    ___  | |_   _   _   _ __  
// / __|  / _ \ | __| | | | | | '_ \ 
// \__ \ |  __/ | |_  | |_| | | |_) |
// |___/  \___|  \__|  \__,_| | .__/ 
//                            |_|    

void setup() {

  // Future update
  // Detect keyboard and mouse. If not present then don't scan them in the loop.
  // No need to scan NES controllers as they don't freeze up the process.
  // For now assume they are present
  keyboardPresent = true;
  mousePresent = true;
  
  // Assign register select pins as outputs
  pinMode(registerSelect0, OUTPUT);
  pinMode(registerSelect1, OUTPUT);
  pinMode(registerSelect2, OUTPUT);

  // Setup interupt control pin
  pinMode(mcuInterrupt, OUTPUT);
  digitalWrite(mcuInterrupt, HIGH);
 
  // Set data bus as output 
  for (byte i = 0; i < 8; i++) pinMode(dataPins[i], OUTPUT);

  // Set NES output and output pins
  pinMode(nesData, INPUT_PULLUP);
  pinMode(nesData2, INPUT_PULLUP);
  pinMode(nesClock, OUTPUT);
  digitalWrite(nesClock, LOW);
  pinMode(nesLatch, OUTPUT);
  digitalWrite(nesLatch, LOW);

  // Determine size of arrays to avoid constantly calculating them in the loop()
  sizeOfScanCode = sizeof(scanCode) / sizeof(code) / 2;
  sizeOfIgnoreHandler = sizeof(ignoreHandler) / sizeof(code);
  
  // Setup keyboard
  if(keyboardPresent == true) {
    keyboard.begin(ps2KeyboardData, ps2KeyboardClock);
    keymap.selectMap( (char *)"US" );
    // Disable Break codes (key release) from PS2KeyAdvanced
    keyboard.setNoBreak( 1 );
    // and set no repeat on CTRL, ALT, SHIFT, GUI while outputting
    keyboard.setNoRepeat( 1 );
  }
  
  // Setup mouse
  if(mousePresent == true) mouse.initialize();
}


//  _                         
// | |   ___     ___    _ __  
// | |  / _ \   / _ \  | '_ \ 
// | | | (_) | | (_) | | |_) |
// |_|  \___/   \___/  | .__/ 
//                     |_|    
                     
void loop() {

  // --------
  // KEYBOARD
  // --------
  if(keyboardPresent == true) {

    // Read ASCII keyboard character
    readKeyboard();
    
    // Is there a key pressed?
    if(ascii > 0) {
  
      // Indicate data is valid on the bus for keyboard
      digitalWrite(registerSelect0, LOW);
      digitalWrite(registerSelect1, LOW);
      digitalWrite(registerSelect2, LOW);
  
      // Send out keyboard data
      for (byte i = 0; i < 8; i++) {
        digitalWrite(dataPins[i], ascii & 1);
        ascii /= 2;
      }
  
      // Trigger interrupt
      digitalWrite(mcuInterrupt, LOW);
      delayMicroseconds(timingMicroSeconds);
      digitalWrite(mcuInterrupt, HIGH);
    }
  }

  // -----
  // MOUSE
  // -----
  if(mousePresent == true) {
    
    // Read mouse data
    readMouse();
 
    // Has buttons been pressed or wheel turned?
    if(mouseStatus != lastMouseStatus){
      
      // Indicate data is valid on the bus for mouse status data (001)
      digitalWrite(registerSelect0, HIGH);
      digitalWrite(registerSelect1, LOW);
      digitalWrite(registerSelect2, LOW);
  
      // Send out status data
      byte mouseStatusTemp = mouseStatus;
      for (byte i = 0; i < 8; i++) {
        digitalWrite(dataPins[i], mouseStatusTemp & 1);
        mouseStatusTemp /= 2;
      }
  
      // Trigger interrupt
      digitalWrite(mcuInterrupt, LOW);
      delayMicroseconds(timingMicroSeconds);
      digitalWrite(mcuInterrupt, HIGH);

      lastMouseStatus = mouseStatus;
    }

    // Has X mouvement changed?
    if(mouseX != lastMouseX) {
      
      // Indicate data is valid on the bus for mouse X movement (010)
      digitalWrite(registerSelect0, LOW);
      digitalWrite(registerSelect1, HIGH);
      digitalWrite(registerSelect2, LOW);
  
      // Send out X movement data
      byte mouseXTemp = mouseX;
      for (byte i = 0; i < 8; i++) {
        digitalWrite(dataPins[i], mouseXTemp & 1);
        mouseXTemp /= 2;
      }

      // Trigger interrupt
      digitalWrite(mcuInterrupt, LOW);
      delayMicroseconds(timingMicroSeconds);
      digitalWrite(mcuInterrupt, HIGH);

      lastMouseX = mouseX;
    }

    // Has Y movement changed?
    if(mouseY != lastMouseY) {
      
      // Indicate data is valid on the bus for mouse Y movement (011)
      digitalWrite(registerSelect0, HIGH);
      digitalWrite(registerSelect1, HIGH);
      digitalWrite(registerSelect2, LOW);
    
      // Send out Y movement data
      byte mouseYTemp = mouseY;
      for (byte i = 0; i < 8; i++) {
        digitalWrite(dataPins[i], mouseYTemp & 1);
        mouseYTemp /= 2;
      }
  
      // Trigger interrupt
      digitalWrite(mcuInterrupt, LOW);
      delayMicroseconds(timingMicroSeconds);
      digitalWrite(mcuInterrupt, HIGH);
      
      lastMouseY = mouseY;
    }
  }

  // ---------------
  // NES CONTROLLERS
  // ---------------
  
  // Read NES controller data
  readNesController();
  
  // Has NES controller 1 data changed?
  if(nes1 != lastNes1) {
    
    // Indicate data is valid on the bus for NES controller 1 (100)
    digitalWrite(registerSelect0, LOW);
    digitalWrite(registerSelect1, LOW);
    digitalWrite(registerSelect2, HIGH);

    // Send out NES controller 1 data
    byte nes1Temp = nes1;
    for (byte i = 0; i < 8; i++) {
      digitalWrite(dataPins[i], nes1Temp & 1);
      nes1Temp /= 2;
    }

    // Trigger interrupt
    digitalWrite(mcuInterrupt, LOW);
    delayMicroseconds(timingMicroSeconds);
    digitalWrite(mcuInterrupt, HIGH);

    lastNes1 = nes1;
  }

  // Has NES controller 2 data changed?
  if(nes2 != lastNes2) {
     
    // Indicate data is valid on the bus for NES controller 2 (101)
    digitalWrite(registerSelect0, HIGH);
    digitalWrite(registerSelect1, LOW);
    digitalWrite(registerSelect2, HIGH);

    // Send out NES controller 2 data
    byte nes2Temp = nes2;
    for (byte i = 0; i < 8; i++) {
      digitalWrite(dataPins[i], nes2Temp & 1);
      nes2Temp /= 2;
    }

    // Trigger interrupt
    digitalWrite(mcuInterrupt, LOW);
    delayMicroseconds(timingMicroSeconds);
    digitalWrite(mcuInterrupt, HIGH);

    lastNes2 = nes2;
  }
}
