#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include "Seeed_RGB_LED_Matrix.h"
#include "grove_two_rgb_led_matrix.h"
#include "shims.h"

// This file wraps a C++ class and exposes Swift useable interface

GroveTwoRGBLedMatrixClass matrix;

extern "C" {
	void displayNumber(int16_t number, uint16_t duration_time, bool forever_flag, uint8_t color) {
		matrix.displayNumber(number, duration_time, forever_flag, color);
	}	

	void displayBar(uint8_t bar, uint16_t duration_time, bool forever_flag, uint8_t color) {
		matrix.displayBar(bar, duration_time, forever_flag, color);
	}

	void displayColorBar(uint8_t bar, uint16_t duration_time, bool forever_flag) {
		matrix.displayColorBar(bar, duration_time, forever_flag);
	}

	void displayEmoji(uint8_t emoji, uint16_t duration_time, bool forever_flag) {
		matrix.displayEmoji(emoji, duration_time, forever_flag);
	}

	void displayString(char *str, uint16_t duration_time, bool forever_flag, uint8_t color) {
		matrix.displayString(str, duration_time, forever_flag, color);
	}

	void displayStringConstant(const char *message, uint16_t duration_time, bool forever_flag, uint8_t color) {
		// copy from program memory into the shared string buffer, note: kills the string buffer
		_stringStartNew();
		const char * buffer = _stringAddFromProgmem(message);
		matrix.displayString((char*)buffer, duration_time, forever_flag, color);
	}

	void displayColorBlock(uint32_t rgb, uint16_t duration_time, bool forever_flag) {
		matrix.displayColorBlock(rgb, duration_time, forever_flag);
	}

	void stopDisplay(void) {
		matrix.stopDisplay();
	}

	void resetDevice(void) {
		matrix.resetDevice();
	}
}
