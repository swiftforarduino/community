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

	bool particleSensorStart();

	void particleSensorSetup(
		unsigned char powerLevel,
		unsigned char sampleAverage,
		unsigned char ledMode,
		unsigned short sampleRate,
		unsigned short pulseWidth,
		unsigned short adcRange);

	uint8_t particleSensorAvailable(void);
	uint32_t particleSensorGetRed(void);
	uint32_t particleSensorGetGreen(void);
	uint32_t particleSensorGetIR(void);
	void particleSensorNextSample(void);
	uint16_t particleSensorCheck(void);
	bool particleSensorSafeCheck(uint8_t maxTimeToCheck);

	void calculate_sats(
		const uint16_t *pun_ir_buffer,
		const int32_t n_ir_buffer_length,
		const uint16_t *pun_red_buffer,
		int32_t *pn_spo2,
		int8_t *pch_spo2_valid,
		int32_t *pn_heart_rate,
		int8_t *pch_hr_valid);

#ifndef __clang_version__
}
#endif