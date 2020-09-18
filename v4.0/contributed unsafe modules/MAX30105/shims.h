// AVR library primitives/internals, not for use from Swift, use the Swift wrapper
// functions in the main AVR module instead

#ifndef _SHIMS_H_
#define _SHIMS_H_
extern "C" {

#ifndef uint32
#define uint32 uint32_t
#endif

#ifndef millis
#define millis _ticks
#endif

// nullable annotations are meaningless in GCC
#ifndef __clang_version__
#define __nonnull 
#define __nullable 
#endif

#ifndef digitalRead
#define digitalRead _digitalRead
#endif

#ifndef digitalWrite
#define digitalWrite _digitalWrite
#endif

#ifndef pinMode
#define pinMode _pinMode
#endif

#ifndef delayMicroseconds
#define delayMicroseconds _delayUs
#endif

#ifndef delay
#define delay _delayMs
#endif

	void _i2cinit(unsigned char speed, unsigned char premultiplier, bool activatePullups);
	bool _i2cstart();
	void _i2cstop();
	bool _i2cwrite(unsigned char byte);
	unsigned char _i2cread(bool sendAck);

	// higher level I2C
	void _i2cWriteByte(unsigned char address, unsigned char byte);
	void _i2cWriteBuffer(unsigned char address, unsigned short maxMsgLen, const char * buffer, bool isString);
	const char * __nonnull _i2cReadBuffer(unsigned char address, unsigned char size, char * __nullable buffer);
	unsigned char _i2cReadSingleByte(unsigned char address);
	void _i2cWritePGMString(unsigned char address, const char * __nonnull message, bool addNewline);

	// SPI
	// enable hardware SPI and set parameters, note: this takes over pins 11,12,13 and sets pin 10 as output (for use as SS)
	// speed is 0 - 3, 0 is fastest, clock speed/4, 1 = clock/16, 2 = clock/64, 3 = clock/128
	void _setupSPIAsMaster(unsigned char speed, unsigned char mode, bool lsb);
	// not recommended when already running on maximum speed (speed == 0, clock/4)
	void _setupSPIDoubleSpeed(bool doubleSpeed);
	// blocks until transmission and reception complete
	unsigned char _sendSPIByteBlocking(unsigned char byte);
	// blocks until transmission and reception complete
	const char * __nonnull _sendReceiveSPIBufferBlocking(unsigned short maxMsgLen, const char * __nonnull message, bool sendMessage, bool sendString, bool receiveString);
	// blocks until reception complete
	const char * __nonnull _receiveSPIBufferBlocking(unsigned short maxMsgLen, bool receiveString);
	// disable hardware SPI, release pins 11,12,13, you should now reset their input/output modes if you want to use them
	void __attribute__((weak)) _stopSPI();

	// utils
	uint32 _ticks();
	void _delayMs(unsigned short delay);
	void _delayUs(unsigned short delayUs);

	// digital IO
	bool _digitalRead(unsigned char pin);
	void _digitalWrite(unsigned char pin, bool value);
	void _pinMode(unsigned char pin, bool write);

	/* Raw read/write. */
	unsigned char _getPortB();
	unsigned char _getPortC();
	unsigned char _getPortD();

	void _setPortB(unsigned char value);
	void _setPortC(unsigned char value);
	void _setPortD(unsigned char value);

	unsigned char _getDDRB();
	unsigned char _getDDRC();
	unsigned char _getDDRD();

	void _setDDRB(unsigned char value);
	void _setDDRC(unsigned char value);
	void _setDDRD(unsigned char value);

	//USART
	void _sendByte(unsigned char byte);
	// send a hard coded string from the PROGMEM (does not use RAM)
	void _sendString(unsigned short maxMsgLen, const char * __nonnull message, bool addNewline); // must be NULL terminated
	// send a buffer from RAM (do not mix these two up!)
	void _sendBuffer(unsigned short maxMsgLen, const char * __nonnull buffer, bool addNewline); // must be NULL terminated
	bool _available();
	unsigned char _receiveByte();

	// SPI
	// blocks until transmission and reception complete
	unsigned char _sendSPIByteBlocking(unsigned char byte);
	// blocks until transmission and reception complete
	const char * __nonnull _sendReceiveSPIBufferBlocking(
		unsigned short maxMsgLen,
		const char * __nonnull message,
		bool sendMessage,
		bool sendString,
		bool receiveString);

  // Memory efficient string buffer handling/building.
	// note, only one string buffer can be used at a time
	bool _stringAddSingleCharacter(unsigned char byte);
	bool _stringAddWord(unsigned short word, bool bigEndian);
	void _stringStartNew();
	const char * __nonnull _stringCurrentValue();
	const char _stringCurrentLength();
	const char _stringRemainingLength();
	const char * __nonnull _stringAdd(const char * __nullable message);
	const char * __nonnull _stringAddFromProgmem(const char * __nullable message);
	const char * __nonnull _emptyStringBuffer();

	extern const bool HIGH;
	extern const bool LOW;
	extern const bool OUTPUT;
	extern const bool INPUT;
	extern const unsigned char WHILE_LOW;
	extern const unsigned char CHANGING_EDGE;
	extern const unsigned char FALLING_EDGE;
	extern const unsigned char RISING_EDGE;
}
#endif
