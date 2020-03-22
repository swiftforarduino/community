// Author: Carl Peto
// Date: 02/02/2019
// IDE Version: 3.0
// Description: This library uses Timer1 based interrupt callback functions to
// control a servo, giving angles between 0 and 90 degrees.
// Note: this was tested on some sample servos and may not be ideal for your
// situation. It may be better to copy this code and write your own hand made
// code for your own servos. This is intended to be of some use in very basic
// code but not definitive for all servos.
// Also, using interrupt driven pulse shaping may be over complicated and not
// ideal for all situations, you might prefer to stick to simple delay based
// code on the main loop.

import AVR

/* Snippets:
 {
        "Servo (interrupts)":[

            {"partName":"Start servo (interrupts)",
                "partCode":"startServo(angle: 0, pin: D7)"
            },

            {"partName":"Change the servo angle",
                "partCode":"setServoAngle(angle: 60)"
            }
        ]
 }
*/

public private(set) var currentServoAngle: UInt8 = 0
private var servoControlPin: UInt8 = 0
private var microseconds: UInt16 = 0

// Start a servo and set initial angle
// Angles are in degrees from 0-90
// Values outside that range are clipped
func startServo(angle: UInt8, pin: UInt8) {
  if pin >= 0 && pin <= 13 {
    servoControlPin = pin
    pinMode(pin: pin, mode: OUTPUT)
    setServoAngle(angle: angle)
  }

  executeAsync(after: 20, repeats: true) {
    servoPulseSignal()
  }
}

func setServoAngle(angle: UInt8) {
  var adjustedAngle = angle
  
  if angle > 90 {
    adjustedAngle = 90
  }

  currentServoAngle = adjustedAngle
  microseconds = (UInt16(adjustedAngle) &* 11) &+ 1000
}

private func servoPulseSignal() {
  digitalWrite(pin: servoControlPin, value: HIGH)
  wait(us: microseconds)
  digitalWrite(pin: servoControlPin, value: LOW)
}


