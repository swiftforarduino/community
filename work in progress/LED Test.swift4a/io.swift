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
It is common to incoprporate several LEDs or Buttons in an Arduino project. In 
addition, these are often the first external components beginners use when 
starting with Arduino. IO Widgets is an experiment to see what an abstraction of
these common components might look like.

Advantages:
- One line setup, simple higher level API
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
							  count: Int16 = 0) {

	// TODO: Make this function asynchronous

	// count = 0, blink forever

	// I would like to use a for...in loop here, but they don't work now outside of main tab.
	var counter: Int16 = count
	while (count == 0 || counter > 0) {
  
		LED_on(myLED)
		delay(milliseconds: onTime)
		LED_off(myLED)
		delay(milliseconds: offTime)

		counter = counter &- 1
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
	// I would like to use a for...in loop here, but they don't work now outside of main tab.
	var counter: UInt8 = 0
	while (counter < maxBrightness) {
  
		// Wait a bit
		delay(milliseconds: delayPerStep)

		// Increase or decrease brightness for next write
		if value {
			currentLevel = currentLevel &+ 1
  		}
		else {
			currentLevel = currentLevel &- 1
  		}

		// Write PWM value to led pin
		analogWrite(pin: led.pin, value: currentLevel)

		counter = counter &+ 1
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
func BUTTON_isPressed(_ button: BUTTON) -> Bool {
  
  let isHigh = digitalRead(pin: button.pin)
  
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

