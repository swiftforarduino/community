//-------------------------------------------------------------------------------
//
// Grove Distance Interrupter
//
// Simple test for Grove Distance Interrupter.
// http://wiki.seeedstudio.com/Grove-Digital_Distance_Interrupter_0.5_to_5cm-GP2Y0D805Z0F/
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
• Grove Distance Interrupter
• Grove Cable (included with sensor)
• Grove Base Shield (optional)


Notes:
This program is designed to monitor the sensor and print a message continuoulsy 
as long as an object is being detected. The detection / print speed is determined 
by the delay at the end of the main loop. The sensor PCB has a built in LED that 
illuminates when the sensor detects and object.

It may seem like the sensor is not working. The Grove Distance Interrupter is 
finicky and does not sense darker objects (like fingers) or sense well in a dark 
environment. In addition, it has a narrow distance range that it will detect. 
Best sesing is achieved in a well lit room using a white scrap of paper or 
notecard positioned about 1" from the sensor.

*/

import AVR

//--------------------------------------------------------------------------------

// Define IO pins
let sensor_pin: UInt8 = 2 // Seeed Studio Base Shield connector D2

// Setup IO pins
pinMode(pin: sensor_pin, mode: INPUT) // Sensor is an input (normally HIGH)

// Properties
var sensorState: Bool = HIGH // Sensor pin state

// Setup Code
SetupSerial(baudRate: 9600) // Init serial port so print() works

//--------------------------------------------------------------------------------

while(true) {

	// Read the sensor
	sensorState = digitalRead(pin: sensor_pin)

	// If the sensor detects and object (LOW) print a message
	if (sensorState == LOW) {
		print(message: Object1)
	}

	// Reduce read speed to 4 times per second
	delay(milliseconds: 250)
}

//--------------------------------------------------------------------------------
