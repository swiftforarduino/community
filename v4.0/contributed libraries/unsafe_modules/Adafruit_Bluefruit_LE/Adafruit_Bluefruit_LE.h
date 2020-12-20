#ifdef __clang_version__
#define uint8_t unsigned char
#define uint16_t unsigned short
#else
#include <stdint.h>
#endif

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

	bool btstart(bool verbose);
	bool btreset();
	void btverbose(bool on);
	void btinfo(void);
	bool btecho(bool on);
	bool btcheckminimumversionbuffer(const char * version);
	bool btcheckminimumversionfixedstring(const char * version);
	bool btcheckminimumversionstaticstring(int len, const unsigned char * version);
	bool btfactoryreset();
	bool btisconnected();
	bool btsetmode(uint8_t new_mode);
	bool btsendcommandbuffer(const char * cmd);
	bool btsendcommandfixedstring(const char * cmd);
	bool btsendcommandstaticstring(int len, const unsigned char * cmd);
	bool btwaitforok();
	void btprintbuffer(const char * buffer, bool addNewline);
	void btprintfixedstring(const char * string, bool addNewline);
	void btprintstaticstring(int len, const unsigned char * string, bool addNewline);
	uint16_t btavailable();
	uint16_t btreadword();
	void btreadbytepair(unsigned char * byte1, unsigned char * byte2);

#ifndef __clang_version__
}
#endif