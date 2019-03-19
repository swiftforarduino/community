//-------------------------------------------------------------------------------
//
// IO Widgets
//
// A collection of types and functions for working with simple common IO devices.
//
// Swift for Arduino (S4A)
// swiftforarduino.com
//
//	Created 27 Jan 2019
//	by Mark Swanson
//
//-------------------------------------------------------------------------------

/*

PURPOSE:
--------
It is common to incorporate several LEDs or Buttons in an Arduino project. In 
addition, these are often the first external components beginners use when 
starting with Arduino. IO Widgets is an experiment to see what an abstraction of
these common components might look like.

Advantages:
- One line setup, simple high level API
- Less boilerplate code and multiple variable per peripheral in main file
- More Swifty, declarative style, tuples, blocks for callbacks
- Reduce reinvention of code required to interact with common peripherals
- Handle complex asynchronous interactions
- Using a function for setup (in leau of direct setting a tuple) allows default 
  parameters to simplify and reduce verbosity for common use cases and allows
  setup code to be run wihtout relying on the client to call another function

Disadvantages:
- Hides some of the inner workings of IO pins and simple peripherals




NAMING CONVENTIONS:
-------------------
IO Widget (type) names are UPPERCASE (ex: LED, SWITCH, PIEZO).

Function names begin with the type, followed by underscore, then the camelCased 
function name. Examples: LED_on(), LED_off(), BUTTON_isPressed(), PIEZO_play()



USE:
----
The types and functions are used to simplify code for common IO widgets by
approximating an object orientated API.

Since we don't have classes to init(), IO Widgets are created by calling their 
_setup() function. _setup() will return a tuple that for the most part the 
values it contains can be ignored. Just pass these tuples into other function 
calls (as the first, unnamed, parameter). Do not create the tuple types directly 
or setup code will be bypassed, leading to undefined behavior. Changing values of 
the tuple is not supported and will lead to undefined behavior. If you need new 
values, make a new tuple using _setup().



EXAMPLE:
--------

	// Declare and setup LED
	let myLED = LED_setup(pin: 13)

	while(true) {
  
		// Blink LED 3 times
		LED_blink(myLED, onTime: 500, offTime: 250, count: 3)

		delay(milliseconds: 2000)
	}



API:
----

LED
----------------------
LED_setup(pin, onState)
LED_on()
LED_off()
LED_fadeOn() (PWM pins only)
LED_fadeOff() (PWM pins only)
LED_blink(onTime, offTime, count)

Button
----------------------
BUTTON_setup(pin, onState, usePullup, onAction)
BUTTON_isPressed()

Piezo
----------------------
PIEZO_setup(pin)
PIEZO_play(frequency, duration)

Stepper Motor
----------------------
STEPPER_setup(pin1, pin2, pin3, pin4, stepPerRev)
STEPPER_setSpeed()
STEPPER_step(count)
STEPPER_step(degrees)
STEPPER_step(rotations)

Sensor - potentiometer, temperature, force sensor, etc.
----------------------
SENSOR_setup(pin, usePullup, readInterval, averageCount)
SENSOR_reset()
SENSOR_read()
SENSOR_average()

Shift Register - seven segment display driver
----------------------
SHIFT_setup(dataPin, clockPin, bitOrder)
SHIFT_in()
SHIFT_out(value)

...Considering generalizing IO as below, not sure yet...

DIGITAL Input
----------------------
DIGITAL_IN_setup(pin, usePullup, readInterval, averageCount)
DIGITAL_IN_reset()
DIGITAL_IN_read()
DIGITAL_IN_average()

DIGITAL Output
----------------------
DIGITAL_OUT_setup(pin)
DIGITAL_OUT_on()
DIGITAL_OUT_off()
DIGITAL_OUT_toggle(onTime, offTime, count)

Analog Input () 
----------------------
ANALOG_IN_setup(pin, usePullup, readInterval, averageCount)
ANALOG_IN_reset()
ANALOG_IN_read()
ANALOG_IN_average()

Analog Output - dc motor, transistor, etc.
----------------------
ANALOG_OUT_setup(pin)
ANALOG_OUT_on()
ANALOG_OUT_off()
ANALOG_OUT_set(value)



NOTES:
------
LED_fadeOn & LED_fadeOff use analogWrite() which can only be used on Arduino UNO 
pins 3, 5, 6, 9, 10, 11 (PWM outputs) See: https://www.arduino.cc/en/reference/board/

PWM outputs can conflict with running timers.
	- timer0 used to PWM pins 5, 6
	- timer1 used to PWM pins 9, 10
	- timer2 used to PWM pins 11, 3



FUTURE:
-------
Consider adding _update() functions for IO Widgets that need to keep state. Use:

	// Declare and setup BUTTON
	var myButton = BUTTON_setup(pin: 2)

	while(true) {
  
		// Update button (tuple can be updated)
		myButton = BUTTON_update(myButton)

		delay(milliseconds: 1)
	}

*/

//--------------------------------------------------------------------------------

import AVR

//--------------------------------------------------------------------------------

public typealias milliseconds = UInt16
public typealias ioPin = UInt8
public typealias ioPinState = Bool

//--------------------------------------------------------------------------------
// LED
//--------------------------------------------------------------------------------

public typealias LED = (pin: ioPin, onState: ioPinState)

//--------------------------------------------------------------------------------
func LED_setup(pin: ioPin, onState: ioPinState = HIGH) -> LED {
	
	let led = LED(pin: pin, onState: onState)

	pinMode(pin: led.pin, mode: OUTPUT)
	LED_off(led)

	return led
}

//--------------------------------------------------------------------------------
public func LED_on(_ led: LED) {

	digitalWrite(pin: led.pin, value: led.onState)
}

//--------------------------------------------------------------------------------
public func LED_off(_ led: LED) {
  
	digitalWrite(pin: led.pin, value: (led.onState == HIGH) ? LOW : HIGH)
}

//--------------------------------------------------------------------------------
public func LED_blink(_ led: LED, 
							 onTime: milliseconds,
							offTime: milliseconds, 
							  count: UInt8 = 1) {

	// TODO: Make this function asynchronous (and count=0 blink forever)

	for _ in 1...count {
		LED_on(myLED)
		delay(milliseconds: onTime)
		LED_off(myLED)
		delay(milliseconds: offTime)
	}
} 

//-------------------------------------------------------------------------------
public func LED_fadeOn(_ led: LED,
					   milliseconds: milliseconds) {
  
	LED_fade(led, value: led.onState, milliseconds: milliseconds)
}

//-------------------------------------------------------------------------------
public func LED_fadeOff(_ led: LED,
					   milliseconds: milliseconds) {
  
	LED_fade(led, value: (led.onState == HIGH) ? LOW : HIGH, milliseconds: milliseconds)
}

//-------------------------------------------------------------------------------
public func LED_fade(_ led: LED, 
							 value: Bool, 
 				   milliseconds: milliseconds,
 				  maxBrightness: UInt8 = 255) {

	// TODO: Make this function asynchronous

	guard led.pin == 3 || led.pin == 5 || led.pin == 6 || led.pin == 9 || led.pin == 10 || led.pin == 11 else {
 		// pin cannot be used with analogWrite()
		return
	}

	var currentLevel: UInt8 = value ? 0 : maxBrightness
	let delayPerStep: milliseconds = milliseconds / UInt16(maxBrightness)

	// Write initial value
	analogWrite(pin: led.pin, value: currentLevel)

	// Fade (Start LOW and increase to HIGH or vice versa)
	for _ in 0...maxBrightness {

		// Write PWM value to led pin
		analogWrite(pin: led.pin, value: currentLevel)

		// Increase or decrease brightness for next write
		if value {
			currentLevel = currentLevel &+ 1
  		}
		else {
			currentLevel = currentLevel &- 1
  		}

		// Wait a bit
		delay(milliseconds: delayPerStep)
	}
}

//--------------------------------------------------------------------------------
// BUTTON
//--------------------------------------------------------------------------------

public typealias BUTTON = (pin: ioPin, onState: ioPinState)

//--------------------------------------------------------------------------------

func BUTTON_setup(pin: ioPin, 
				  onState: ioPinState = HIGH,
				  oneShot: Bool = false,
				usePullup: Bool = false) -> BUTTON {
//				onAction: (@convention(c) () -> Void)? = nil) 
  
	// TODO: Consider adding onAction callback (this will require BUTTON_update() function be added)

	let button = BUTTON(pin: pin, onState: onState)

	pinMode(pin: button.pin, mode: INPUT)

	if usePullup {
		// Turn on pullup resistors  
		digitalWrite(pin: pin, value: HIGH);       
	}
	else {
		// Turn off pullup resistors  
		digitalWrite(pin: pin, value: LOW);       
	}

	return button
}

//--------------------------------------------------------------------------------
func BUTTON_isPressed(_ button: BUTTON, usingAnalogPin: Bool = false) -> Bool {
  
	let isHigh: Bool

	if usingAnalogPin {
  		// ATmega328p (quad flat pack) has two additional "Analog Only" pins. 
		let value: UInt16 = slowAnalogRead(pin: button.pin)
		print(unsignedInt: value)
		if value > 1018 {
			isHigh = true
		}
		else {
			isHigh = false
  		}
	}
	else {
		isHigh = digitalRead(pin: button.pin)
  	}
  
	// If button is HIGH and HIGH is the onState, or button is LOW and LOW is the onState
	if (isHigh && button.onState) || (!isHigh && !button.onState) {
  		return true
	}
	else {
  		return false
	}
}

//--------------------------------------------------------------------------------
// PIEZO
//--------------------------------------------------------------------------------

public typealias PIEZO = ioPin
public typealias piezoNote = (delay: milliseconds, cyclesPerTenthSec: UInt16)

// timeHigh = 1/(2 * toneFrequency) = period / 2
let PIEZO_c: piezoNote = (delay: 1915, cyclesPerTenthSec: 26)
let PIEZO_d: piezoNote = (delay: 1700, cyclesPerTenthSec: 29)
let PIEZO_e: piezoNote = (delay: 1519, cyclesPerTenthSec: 33)
let PIEZO_f: piezoNote = (delay: 1432, cyclesPerTenthSec: 35)
let PIEZO_g: piezoNote = (delay: 1275, cyclesPerTenthSec: 39)
let PIEZO_a: piezoNote = (delay: 1136, cyclesPerTenthSec: 44)
let PIEZO_b: piezoNote = (delay: 1014, cyclesPerTenthSec: 49)
let PIEZO_C: piezoNote = (delay: 956, cyclesPerTenthSec: 52)

//--------------------------------------------------------------------------------
func PIEZO_setup(pin: ioPin) -> PIEZO {
  
	let piezo = pin
	pinMode(pin: piezo, mode: OUTPUT)

	return piezo
}

//--------------------------------------------------------------------------------
func PIEZO_play(_ piezo: PIEZO, note: piezoNote, tenthsOfASecond: UInt16, postDelay: milliseconds = 0) {

	// I would like to use for...in loops here, but they don't work now outside of main tab.

	for _ in 1...tenthsOfASecond {
		var cycles: UInt16 = note.cyclesPerTenthSec
		while (cycles > 0) {
  			// Create a square wave of proper frequency to play the note
			digitalWrite(pin: piezo, value: HIGH)
			delay(microseconds: note.delay)
			digitalWrite(pin: piezo, value: LOW)
			delay(microseconds: note.delay)
			cycles = cycles &- 1
		}
	}



	var tenths: UInt16 = tenthsOfASecond
	while (tenths > 0) {
		var cycles: UInt16 = note.cyclesPerTenthSec
		while (cycles > 0) {
  			// Create a square wave of proper frequency to play the note
			digitalWrite(pin: piezo, value: HIGH)
			delay(microseconds: note.delay)
			digitalWrite(pin: piezo, value: LOW)
			delay(microseconds: note.delay)
			cycles = cycles &- 1
		}
		tenths = tenths &- 1
	}

	delay(milliseconds: postDelay)
}

//--------------------------------------------------------------------------------
func PIEZO_play(_ piezo: PIEZO, frequency: UInt16, duration: milliseconds) {
  
  /*
  
 * The calculation of the tones is made following the mathematical
 * operation:
 *
 *       timeHigh = 1/(2 * toneFrequency) = period / 2
 *
 * where the different tones are described as in the table:
 *
 * note	frequency	period	PW (timeHigh)	
 * c		261 Hz		3830		1915 	
 * d		294 Hz		3400		1700 	
 * e		329 Hz		3038		1519 	
 * f		349 Hz		2864		1432 	
 * g		392 Hz		2550		1275 	
 * a		440 Hz		2272		1136 	
 * b		493 Hz		2028		1014	
 * C		523 Hz		1912		956
 
 
 #define NOTE_B0  31
 #define NOTE_C1  33
 #define NOTE_CS1 35
 #define NOTE_D1  37
 #define NOTE_DS1 39
 #define NOTE_E1  41
 #define NOTE_F1  44
 #define NOTE_FS1 46
 #define NOTE_G1  49
 #define NOTE_GS1 52
 #define NOTE_A1  55
 #define NOTE_AS1 58
 #define NOTE_B1  62
 #define NOTE_C2  65
 #define NOTE_CS2 69
 #define NOTE_D2  73
 #define NOTE_DS2 78
 #define NOTE_E2  82
 #define NOTE_F2  87
 #define NOTE_FS2 93
 #define NOTE_G2  98
 #define NOTE_GS2 104
 ---------------------
 #define NOTE_A2  110
 #define NOTE_AS2 117
 #define NOTE_B2  123
 #define NOTE_C3  131
 #define NOTE_CS3 139
 #define NOTE_D3  147
 #define NOTE_DS3 156
 #define NOTE_E3  165
 #define NOTE_F3  175
 #define NOTE_FS3 185
 #define NOTE_G3  196
 #define NOTE_GS3 208
 #define NOTE_A3  220
 #define NOTE_AS3 233
 #define NOTE_B3  247
 #define NOTE_C4  262
 #define NOTE_CS4 277
 #define NOTE_D4  294
 #define NOTE_DS4 311
 #define NOTE_E4  330
 #define NOTE_F4  349
 #define NOTE_FS4 370
 #define NOTE_G4  392
 #define NOTE_GS4 415
 #define NOTE_A4  440
 #define NOTE_AS4 466
 #define NOTE_B4  494
 #define NOTE_C5  523
 #define NOTE_CS5 554
 #define NOTE_D5  587
 #define NOTE_DS5 622
 #define NOTE_E5  659
 #define NOTE_F5  698
 #define NOTE_FS5 740
 #define NOTE_G5  784
 #define NOTE_GS5 831
 #define NOTE_A5  880
 #define NOTE_AS5 932
 #define NOTE_B5  988
 #define NOTE_C6  1047
 #define NOTE_CS6 1109
 #define NOTE_D6  1175
 #define NOTE_DS6 1245
 #define NOTE_E6  1319
 #define NOTE_F6  1397
 #define NOTE_FS6 1480
 #define NOTE_G6  1568
 #define NOTE_GS6 1661
 #define NOTE_A6  1760
 #define NOTE_AS6 1865
 #define NOTE_B6  1976
 #define NOTE_C7  2093
 #define NOTE_CS7 2217
 #define NOTE_D7  2349
 #define NOTE_DS7 2489
 #define NOTE_E7  2637
 #define NOTE_F7  2794
 #define NOTE_FS7 2960
 #define NOTE_G7  3136
 #define NOTE_GS7 3322
 #define NOTE_A7  3520
 #define NOTE_AS7 3729
 #define NOTE_B7  3951
 #define NOTE_C8  4186
 #define NOTE_CS8 4435
 #define NOTE_D8  4699
 #define NOTE_DS8 4978 
 */
  
}

//--------------------------------------------------------------------------------

