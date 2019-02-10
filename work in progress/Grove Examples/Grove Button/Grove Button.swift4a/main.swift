//-------------------------------------------------------------------------------
//
// Grove Button
//
// Simple test for Grove Button.
// http://wiki.seeedstudio.com/Grove-Button/
//
// Swift for Arduino (S4A)
// swiftforarduino.com
//
//	Created 10 Feb 2019
//	by Mark Swanson
//
//-------------------------------------------------------------------------------
/*


Hardware Setup:
• Arduino Uno
• Grove Button
• Grove Cable (included with button)
• Grove Base Shield (optional)


Notes:
This program is designed to detect a button press and then turn on an LED and 
print a message. When the button is released, it will turn off the LED. Code is 
designed to process each button press only once.

*/

import AVR

//--------------------------------------------------------------------------------

// Define IO pins
let led_pin: UInt8 = 13 // Arduino Uno built in LED is pin 13
let button_pin: UInt8 = 2 // Seeed Studio Base Shield connector D2

// Setup IO pins
pinMode(pin: led_pin, mode: OUTPUT) // LED is an output
pinMode(pin: button_pin, mode: INPUT) // Button is an input

// Properties
var buttonState: Bool = LOW // Button pin state
var buttonWasProcessed: Bool = false // Used to allow button press to be process once

// Setup Code
SetupSerial(baudRate: 9600) // Init serial port so print() works

//--------------------------------------------------------------------------------

while(true) {

	// Read the button
	buttonState = digitalRead(pin: button_pin)

	// See if the button is pressed (HIGH = pressed)
	if (buttonState == HIGH) {
  
  		// See if the button press has been processed yet
  		if !buttonWasProcessed {
    
			// Turn LED on and print a message
			digitalWrite(pin: led_pin, value: HIGH)
			print(message: Button0)

			// Prevent processing button press again until button is released
			buttonWasProcessed = true
		}
	}
	else {
		// Turn LED off
		digitalWrite(pin: led_pin, value: LOW)

  		// Button released, allow processing next button press
		buttonWasProcessed = false
	}
}

//--------------------------------------------------------------------------------
