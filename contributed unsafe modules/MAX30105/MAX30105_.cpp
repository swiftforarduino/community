#ifndef F_CPU
#define F_CPU 16000000UL
#endif

#include "MAX30105_.h"
#include "shims.h"
#include "MAX30105.h"
#include "spo2_algorithm.h"

// This file wraps a C++ class and exposes Swift useable interface
MAX30105 particleSensor;

extern "C" {
	bool particleSensorStart() {
		// use hard coded slave, speed, etc. for now, patch this if you need
		return particleSensor.begin();
	}

	void particleSensorSetup(
		unsigned char powerLevel,
		unsigned char sampleAverage,
		unsigned char ledMode,
		unsigned short sampleRate,
		unsigned short pulseWidth,
		unsigned short adcRange) {

		particleSensor.setup(
			powerLevel,
			sampleAverage,
			ledMode,
			sampleRate,
			pulseWidth,
			adcRange);
	}

	uint8_t particleSensorAvailable(void) {
		return particleSensor.available();
	}

	uint32_t particleSensorGetRed(void) {
		return particleSensor.getRed();
	}

	uint32_t particleSensorGetGreen(void) {
		return particleSensor.getGreen();
	}

	uint32_t particleSensorGetIR(void) {
		return particleSensor.getIR();
	}

	void particleSensorNextSample(void) {
		particleSensor.nextSample();
	}

	uint16_t particleSensorCheck(void) {
		return particleSensor.check();
	}

	bool particleSensorSafeCheck(uint8_t maxTimeToCheck) {
		return particleSensor.safeCheck(maxTimeToCheck);
	}

	void calculate_sats(
		const uint16_t *pun_ir_buffer,
		const int32_t n_ir_buffer_length,
		const uint16_t *pun_red_buffer,
		int32_t *pn_spo2,
		int8_t *pch_spo2_valid,
		int32_t *pn_heart_rate,
		int8_t *pch_hr_valid) {

		maxim_heart_rate_and_oxygen_saturation(
			pun_ir_buffer,
			n_ir_buffer_length,
			pun_red_buffer,
			pn_spo2,
			pch_spo2_valid,
			pn_heart_rate,
			pch_hr_valid);
	}
}
