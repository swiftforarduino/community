#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include "TimerInterrupts.h"
#include "shims.h"

// The documented interrupts are:
/*
8	Timer/Counter2 Compare Match A	TIMER2_COMPA_vect
9	Timer/Counter2 Compare Match B	TIMER2_COMPB_vect
10	Timer/Counter2 Overflow	TIMER2_OVF_vect
11	Timer/Counter1 Capture Event	TIMER1_CAPT_vect
12	Timer/Counter1 Compare Match A	TIMER1_COMPA_vect
13	Timer/Counter1 Compare Match B	TIMER1_COMPB_vect
14	Timer/Counter1 Overflow	TIMER1_OVF_vect
15	Timer/Counter0 Compare Match A	TIMER0_COMPA_vect
16	Timer/Counter0 Compare Match B	TIMER0_COMPB_vect
17	Timer/Counter0 Overflow	TIMER0_OVF_vect

...of these, TIMER0_COMPA_vect, TIMER2_OVF_vect, TIMER1_COMPA_vect, TIMER1_OVF_vect
...are already used internally by the AVR library so are not available
*/

static externalInterruptCallback TIMER2_COMPA_Callback = 0;
static externalInterruptCallback TIMER2_COMPB_Callback = 0;

static externalInterruptCallback TIMER1_CAPT_Callback = 0;
static externalInterruptCallback TIMER1_COMPB_Callback = 0;

static externalInterruptCallback TIMER0_COMPB_Callback = 0;
static externalInterruptCallback TIMER0_OVF_Callback = 0;

ISR(TIMER2_COMPA_vect) {
	if (__builtin_expect(!!(TIMER2_COMPA_Callback),1)) {
    TIMER2_COMPA_Callback();
  }
}

externalInterruptCallback getTimer2COMPACallback() {
	return TIMER2_COMPA_Callback;
}

void setTimer2COMPACallback(externalInterruptCallback callback) {
	TIMER2_COMPA_Callback = callback;
}

ISR(TIMER2_COMPB_vect) {
	if (__builtin_expect(!!(TIMER2_COMPB_Callback),1)) {
    TIMER2_COMPB_Callback();
  }
}

externalInterruptCallback getTimer2COMPBCallback() {
	return TIMER2_COMPB_Callback;
}

void setTimer2COMPBCallback(externalInterruptCallback callback) {
	TIMER2_COMPB_Callback = callback;
}

ISR(TIMER1_CAPT_vect) {
	if (__builtin_expect(!!(TIMER1_CAPT_Callback),1)) {
    TIMER1_CAPT_Callback();
  }
}

externalInterruptCallback getTimer1CAPTCallback() {
	return TIMER1_CAPT_Callback;
}

void setTimer1CAPTCallback(externalInterruptCallback callback) {
	TIMER1_CAPT_Callback = callback;
}

ISR(TIMER1_COMPB_vect) {
	if (__builtin_expect(!!(TIMER1_COMPB_Callback),1)) {
    TIMER1_COMPB_Callback();
  }
}

externalInterruptCallback getTimer1COMPBCallback() {
	return TIMER1_COMPB_Callback;
}

void setTimer1COMPBCallback(externalInterruptCallback callback) {
	TIMER1_COMPB_Callback = callback;
}

ISR(TIMER0_COMPB_vect) {
	if (__builtin_expect(!!(TIMER0_COMPB_Callback),1)) {
    TIMER0_COMPB_Callback();
  }
}

externalInterruptCallback getTimer0COMPBCallback() {
	return TIMER0_COMPB_Callback;
}

void setTimer0COMPBCallback(externalInterruptCallback callback) {
	TIMER0_COMPB_Callback = callback;
}

ISR(TIMER0_OVF_vect) {
	if (__builtin_expect(!!(TIMER0_OVF_Callback),1)) {
    TIMER0_OVF_Callback();
  }
}

externalInterruptCallback getTimer0OVFCallback() {
	return TIMER0_OVF_Callback;
}

void setTimer0OVFCallback(externalInterruptCallback callback) {
	TIMER0_OVF_Callback = callback;
}
