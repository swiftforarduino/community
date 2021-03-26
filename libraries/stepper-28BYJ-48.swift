// Author: Carl Peto
// Date: 01/28/2019
// IDE Version: 3.0
// Description: This library controls a typical stepper motor, a 28BYJ-48 motor.
// You can use this to control one of these motors, single stepping, reversing, etc.
// It might work with other motors but is not guaranteed. However you can copy this
// library code and write your own based on it.

/* Snippets:
 {
        "Stepper Motor 28BYJ-48":[

            {"partName":"Setup 28BYJ-48 motor",
                "partCode":"setupStepper(IN1: D8, IN2: D9, IN3: D10, IN4: D11)"
            },

            {"partName":"Step through various angles",
                "partCode":"  var i: UInt16 = 0\nwhile i < 4096 {\nsingleStep()\ndelay(microseconds: 800)\ni = i &+ 1\n}"
            },

            {"partName":"Reverse step direction",
                "partCode":"reverseDirection()"
            }
        ]
 }
*/

import AVR

private(set) var IN1 = D8
private(set) var IN2 = D9
private(set) var IN3 = D10
private(set) var IN4 = D11

private var currentStep = 0
private var forward = true

func setDirection(forward forwardIn: Bool) {
  forward = forwardIn
}

func reverseDirection() {
  forward = !forward
}

func setupStepper(IN1 pin1: UInt8, IN2 pin2: UInt8, IN3 pin3: UInt8, IN4 pin4: UInt8) {
  IN1 = pin1
  IN2 = pin2
  IN3 = pin3
  IN4 = pin4

  pinMode(pin: IN1, mode: OUTPUT)
  pinMode(pin: IN2, mode: OUTPUT)
  pinMode(pin: IN3, mode: OUTPUT)
  pinMode(pin: IN4, mode: OUTPUT)
}

func singleStep() {
  step()
  setMotorCoils()
}

func step(count: UInt16) {
  var i: UInt16 = 0
  while i < count {
    step()
    setMotorCoils()
    i = i &+ 1
  }
}

private func setMotorCoils() {
    switch currentStep {
      case 0:
        digitalWrite(pin: IN1, value: LOW)
        digitalWrite(pin: IN2, value: LOW)
        digitalWrite(pin: IN3, value: LOW)
        digitalWrite(pin: IN4, value: HIGH)

      case 1:
        digitalWrite(pin: IN1, value: LOW)
        digitalWrite(pin: IN2, value: LOW)
        digitalWrite(pin: IN3, value: HIGH)
        digitalWrite(pin: IN4, value: HIGH)

      case 2:
        digitalWrite(pin: IN1, value: LOW)
        digitalWrite(pin: IN2, value: LOW)
        digitalWrite(pin: IN3, value: HIGH)
        digitalWrite(pin: IN4, value: LOW)

      case 3:
        digitalWrite(pin: IN1, value: LOW)
        digitalWrite(pin: IN2, value: HIGH)
        digitalWrite(pin: IN3, value: HIGH)
        digitalWrite(pin: IN4, value: LOW)

      case 4:
        digitalWrite(pin: IN1, value: LOW)
        digitalWrite(pin: IN2, value: HIGH)
        digitalWrite(pin: IN3, value: LOW)
        digitalWrite(pin: IN4, value: LOW)

      case 5:
        digitalWrite(pin: IN1, value: HIGH)
        digitalWrite(pin: IN2, value: HIGH)
        digitalWrite(pin: IN3, value: LOW)
        digitalWrite(pin: IN4, value: LOW)

      case 6:
        digitalWrite(pin: IN1, value: HIGH)
        digitalWrite(pin: IN2, value: LOW)
        digitalWrite(pin: IN3, value: LOW)
        digitalWrite(pin: IN4, value: LOW)

      case 7:
        digitalWrite(pin: IN1, value: HIGH)
        digitalWrite(pin: IN2, value: LOW)
        digitalWrite(pin: IN3, value: LOW)
        digitalWrite(pin: IN4, value: HIGH)
        
      default:
        break

  }
}

private func step() {

  if forward {
    currentStep = currentStep &+ 1
    
    if currentStep > 7 {
      currentStep = 0
    }
  } else {
    currentStep = currentStep &- 1

    if currentStep == 255 {
      currentStep = 7
    }
  }
}
