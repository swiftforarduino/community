//-------------------------------------------------------------------------------
//
// LED Test
//
// Examples of using the LED functions in IO Widgets.
//
// Swift for Arduino (S4A)
// swiftforarduino.com
//
//	Created 27 Jan 2019
//	by Mark Swanson
//
//-------------------------------------------------------------------------------

import AVR

//-------------------------------------------------------------------------------
// Setup

let myLED = LED_setup(pin: 6)

//-------------------------------------------------------------------------------
// Main

while(true) {

	// Turn LED on and off
	for _ in 1...3 {
		LED_on(myLED)
		delay(milliseconds: 500)
		LED_off(myLED)
		delay(milliseconds: 500)
	}
	delay(milliseconds: 1000)

	// Fade LED on and off
	for _ in 1...3 {
		LED_fadeOn(myLED, milliseconds: 1000)
		LED_fadeOff(myLED, milliseconds: 750)
		delay(milliseconds: 500)
	}
	delay(milliseconds: 1000)

	// Blink LED in SOS pattern
	let timeUnit: milliseconds = 100 // Increase to slow down overall SOS signal speed, decrease to make faster
	let dot: milliseconds = timeUnit 
	let dash: milliseconds = timeUnit &* 3 
	let symbolSpace: milliseconds = timeUnit
	let letterSpace: milliseconds = timeUnit &* 3
	let wordSpace: milliseconds = timeUnit &* 7

	for _ in 1...3 {
		LED_blink(myLED, onTime: dot, offTime: symbolSpace, count: 3)
		delay(milliseconds: letterSpace)

		LED_blink(myLED, onTime: dash, offTime: symbolSpace, count: 3)
		delay(milliseconds: letterSpace)

		LED_blink(myLED, onTime: dot, offTime: symbolSpace, count: 3)
		delay(milliseconds: wordSpace) 
	}

	delay(milliseconds: 3000)
}

//-------------------------------------------------------------------------------
