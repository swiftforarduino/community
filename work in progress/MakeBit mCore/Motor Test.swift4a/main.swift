//-------------------------------------------------------------------------------
//
// mBot Drive Motor Test
//
// Work in progress support to test running the motors on the Makeblock mBot.
//
// Swift for Arduino (S4A)
// swiftforarduino.com
//
//	Created 19 Mar 2019
//	by Mark Swanson
//
//-------------------------------------------------------------------------------

import AVR

//-------------------------------------------------------------------------------

/*

Motor driver is TB6612. PWM'd on pins 5 & 6. Directional control on pins 4 and 7

*/

let leftMotorDrivePin: UInt8 = 6
let leftMotorDirectionPin: UInt8 = 7

let rightMotorDrivePin: UInt8 = 5
let rightMotorDirectionPin: UInt8 = 4

pinMode(pin: leftMotorDrivePin, mode: OUTPUT)
pinMode(pin: rightMotorDrivePin, mode: OUTPUT)
pinMode(pin: leftMotorDirectionPin, mode: OUTPUT)
pinMode(pin: rightMotorDirectionPin, mode: OUTPUT)

//-------------------------------------------------------------------------------
func setLeftMotor(speed: UInt8, forward: Bool = true) {

  // Set direction
  digitalWrite(pin: leftMotorDirectionPin, value: !forward)
  
  // Set speed (0 = stop)
  analogWrite(pin: leftMotorDrivePin, value: speed)
}
 
//-------------------------------------------------------------------------------
func setRightMotor(speed: UInt8, forward: Bool = true) {

  // Set direction
  digitalWrite(pin: rightMotorDirectionPin, value: forward)
  
  // Set speed (0 = stop)
  analogWrite(pin: rightMotorDrivePin, value: speed)
}
 
//-------------------------------------------------------------------------------
func setAllMotors(speed: UInt8, forward: Bool = true) {

  // Speed 0 = stop
  
  // Set direction
	digitalWrite(pin: leftMotorDirectionPin, value: !forward)
	digitalWrite(pin: rightMotorDirectionPin, value: forward)
  
  // Set speed (0 = stop)
	analogWrite(pin: leftMotorDrivePin, value: speed)
	analogWrite(pin: rightMotorDrivePin, value: speed)
}
 
//-------------------------------------------------------------------------------
func stopLeftMotor() {
  
	setLeftMotor(speed: 0)
}

//-------------------------------------------------------------------------------
func stopRightMotor() {
  
	setRightMotor(speed: 0)
}

//-------------------------------------------------------------------------------
func stopAllMotors() {
  
	setAllMotors(speed: 0)
}

//-------------------------------------------------------------------------------

stopAllMotors()

//-------------------------------------------------------------------------------
while(true) {

	let speed: UInt8 = 255

	delay(milliseconds: 2000)
	setAllMotors(speed: speed)

	delay(milliseconds: 2000)
	setAllMotors(speed: speed, forward: false)

//	delay(milliseconds: 2000)
//	setLeftMotor(speed: speed)
//	setRightMotor(speed: speed)
//
//	delay(milliseconds: 2000)
//	setLeftMotor(speed: speed, forward: false)
//	setRightMotor(speed: speed, forward: false)
}

//-------------------------------------------------------------------------------
