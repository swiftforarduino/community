// AVR library primitives/internals, not for use from Swift, use the Swift wrapper
// functions in the main AVR module instead
extern "C" {

// nullable annotations are meaningless in GCC
#ifndef __clang_version__
#define __nonnull 
#define __nullable 
#endif

	void _i2cinit(unsigned char speed, unsigned char premultiplier, _Bool activatePullups);
	_Bool _i2cstart();
	void _i2cstop();
	_Bool _i2cwrite(unsigned char byte);
	unsigned char _i2cread(_Bool sendAck);

	// higher level I2C
	void _i2cWriteByte(unsigned char address, unsigned char byte);
	void _i2cWriteBuffer(unsigned char address, unsigned short maxMsgLen, const char * buffer, _Bool isString);
	const char * _i2cReadBuffer(unsigned char address, unsigned char size);

	// utils
	void _delayMs(unsigned short delay);
	void _delayUs(unsigned short delayUs);

	// digital IO
	_Bool _digitalRead(unsigned char pin);
	void _digitalWrite(unsigned char pin, _Bool value);
	void _pinMode(unsigned char pin, _Bool write);

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
	void _sendString(unsigned short maxMsgLen, const char * __nonnull message, _Bool addNewline); // must be NULL terminated
	// send a buffer from RAM (do not mix these two up!)
	void _sendBuffer(unsigned short maxMsgLen, const char * __nonnull buffer, _Bool addNewline); // must be NULL terminated
	_Bool _available();
	unsigned char _receiveByte();

	// SPI
	// blocks until transmission and reception complete
	unsigned char _sendSPIByteBlocking(unsigned char byte);
	// blocks until transmission and reception complete
	const char * __nonnull _sendReceiveSPIBufferBlocking(unsigned short maxMsgLen, const char * __nonnull message, _Bool sendMessage, _Bool sendString, _Bool receiveString);

  // Memory efficient string buffer handling/building.
	// note, only one string buffer can be used at a time
	_Bool _stringAddSingleCharacter(unsigned char byte);
	_Bool _stringAddWord(unsigned short word, _Bool bigEndian);
	void _stringStartNew();
	const char * __nonnull _stringCurrentValue();
	const char _stringCurrentLength();
	const char _stringRemainingLength();
	const char * __nonnull _stringAdd(const char * __nullable message);
	const char * __nonnull _stringAddFromProgmem(const char * __nullable message);
	const char * __nonnull _emptyStringBuffer();
}
