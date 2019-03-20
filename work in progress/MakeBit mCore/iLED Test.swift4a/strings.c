//-------------------------------------------------------------------------------
/*
 This is an example of how simple driving a Neopixel can be
 This code is optimized for understandability and changability rather than raw speed
 More info at http://wp.josh.com/2014/05/11/ws2812-neopixels-made-easy/

 Adapted for Swift for Arduino by Mark Swanson 19 Mar 2019
*/
//-------------------------------------------------------------------------------

// TODO: THIS DEFINE NEEDS TO GO AWAY ONCE IT CAN BE SEEN BY THE COMPILER
#define F_CPU 16000000UL

#include <avr/io.h>
#include <avr/common.h>

// TODO: Next two constants need to be removed once pin to port/mask conversion is complete in iLEDSendBit()
#define PIXEL_PORT  PORTB		// Port of the pin the pixels are connected to
#define PIXEL_BIT   5			// Bit of the pin the pixels are connected to (D13)

#define T1H  900    // Width of a 1 bit HIGH in ns
#define T1L  600    // Width of a 1 bit LOW in ns
#define T0H  400    // Width of a 0 bit HIGH in ns
#define T0L  900    // Width of a 0 bit LOW in ns

#define NS_PER_SEC (1000000000L)	// Note that this has to be SIGNED since we want to be able to check for negative values of derivatives
#define CYCLES_PER_SEC (F_CPU)
#define NS_PER_CYCLE ( NS_PER_SEC / CYCLES_PER_SEC )
#define NS_TO_CYCLES(n) ( (n) / NS_PER_CYCLE )

//-------------------------------------------------------------------------------
inline void iLEDSendBit(unsigned char pin, _Bool bit) {
  
	// TODO: Need to convert incoming pin parameter to PIXEL_PORT and PIXEL_BIT and delete constants above
// 	uint8_t PIXEL_PORT = digitalPinToPort(pin);
//	uint8_t PIXEL_BIT = digitalPinToBitMask(pin);

    if (bit) { // 0 bit
      
		__asm__ volatile (

			// Set (output HIGH) and execute loop of NOPs to delay exactly the specified number of cycles
			"sbi %[port], %[pixelbit] \n\t"	
		 	".rept %[onCycles] \n\t"				
			"nop \n\t"
			".endr \n\t"

			// Clear (output LOW) and execute loop of NOPs to delay exactly the specified number of cycles
			"cbi %[port], %[pixelbit] \n\t"	
			".rept %[offCycles] \n\t"				
			"nop \n\t"
			".endr \n\t"

			: // no output operands
			: // input operandd
				[port]		"I" (_SFR_IO_ADDR(PIXEL_PORT)),
				[pixelbit]	"I" (PIXEL_BIT),
				[onCycles]	"I" (NS_TO_CYCLES(T1H) - 2),

				// 1-bit width less overhead  for the actual bit setting, note that this delay could be longer and everything would still work
				// Minimum interbit delay. Note that we probably don't need this at all since the loop overhead will be enough, but here for correctness
				[offCycles] 	"I" (NS_TO_CYCLES(T1L) - 2) 
			: // no clobbered registers
		
		);
    } 
	else { // 1 bit

		__asm__ volatile (

			// Set (output HIGH) and execute loop of NOPs to delay exactly the specified number of cycles
			"sbi %[port], %[pixelbit] \n\t"
			// Now timing actually matters. The 0-bit must be long enough to be detected but not too long or it will be a 1-bit
			".rept %[onCycles] \n\t"
			"nop \n\t"							
			".endr \n\t"

			// Clear (output LOW) and execute loop of NOPs to delay exactly the specified number of cycles
			"cbi %[port], %[pixelbit] \n\t"		
			".rept %[offCycles] \n\t"				
			"nop \n\t"
			".endr \n\t"

			: // no output operands
			: // input operandd
				[port]		"I" (_SFR_IO_ADDR(PIXEL_PORT)),
				[pixelbit]	"I" (PIXEL_BIT),
				[onCycles]	"I" (NS_TO_CYCLES(T0H) - 2),
				[offCycles]	"I" (NS_TO_CYCLES(T0L) - 2)
			: // no clobbered registers
		
		);
    }
}  
  
//-------------------------------------------------------------------------------
void iLEDSendByte(unsigned char pin, unsigned char byte) {
    
    for (unsigned char bit=0; bit<8; bit++ ) {
      iLEDSendBit(pin, byte & 0b10000000);			// Neopixel wants bit in highest-to-lowest order
      byte <<= 1;								// and then shift left so bit 6 moves into 7, 5 moves into 6, etc
    }           
} 

//-------------------------------------------------------------------------------
