#include <avr/pgmspace.h>

const char Button0Mem[] PROGMEM = "Button Pressed"; const char * Button0 = &Button0Mem[0];

const char Button1Mem[] PROGMEM = "Button Released"; const char * Button1 = &Button1Mem[0];
