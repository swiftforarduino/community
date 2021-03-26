#include <stdint.h>

#define false 0
#define true 1

#ifndef int32
// this should only occur on the AVR platform
#define int32 long
#endif

#ifndef uint32
// this should only occur on the AVR platform
#define uint32 unsigned long
#endif

#ifndef bool
// this should only occur on the AVR platform
#ifdef __clang_version__
#define bool _Bool
#endif
#endif

#ifdef __clang_version__
#define NOT_NULLABLE __nonnull
#define NULLABLE __nullable
#else
#define NOT_NULLABLE 
#define NULLABLE 
#endif

#ifndef __clang_version__
extern "C" {
#endif

	void displayNumber(int16_t number, uint16_t duration_time, bool forever_flag, uint8_t color);
	void displayBar(uint8_t bar, uint16_t duration_time, bool forever_flag, uint8_t color);
	void displayColorBar(uint8_t bar, uint16_t duration_time, bool forever_flag);
	void displayEmoji(uint8_t emoji, uint16_t duration_time, bool forever_flag);
	void displayString(char * NOT_NULLABLE str, uint16_t duration_time, bool forever_flag, uint8_t color);
	void displayStringConstant(const char * NULLABLE message, uint16_t duration_time, bool forever_flag, uint8_t color);
	void displayColorBlock(uint32_t rgb, uint16_t duration_time, bool forever_flag);
	void stopDisplay(void);
	void resetDevice(void);

#ifndef __clang_version__
}
#endif