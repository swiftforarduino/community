import AVR

typealias IntegerLiteralType = UInt8


let tachoPin = 2
let ledPin = 4
let secondLedPin = 5
//let redLedPin = 6

let rotaryPin1 = 10
let rotaryPin2 = 11
let centerPin = 12

var lastPinState: PinsState = (false, false, false)

pinMode(pin: rotaryPin1, mode: INPUT)
digitalWrite(pin: rotaryPin1, value: HIGH)
pinMode(pin: rotaryPin2, mode: INPUT)
digitalWrite(pin: rotaryPin2, value: HIGH)
pinMode(pin: centerPin, mode: INPUT)
digitalWrite(pin: centerPin, value: HIGH)

pinMode(pin: tachoPin, mode: INPUT)
digitalWrite(pin: tachoPin, value: HIGH)

pinMode(pin: ledPin, mode: OUTPUT)
digitalWrite(pin: ledPin, value: LOW)

pinMode(pin: secondLedPin, mode: OUTPUT)
digitalWrite(pin: secondLedPin, value: LOW)

var firstPulse = true

var strobeOn = true

var delayAngle: UInt16 = 0

setupPin2InterruptCallback(edgeType: RISING_EDGE) {

  firstPulse = !firstPulse

  if firstPulse && strobeOn {
    delay(microseconds: delayAngle)

    digitalWrite(pin: ledPin, value: HIGH)
    digitalWrite(pin: secondLedPin, value: HIGH)
    delay(microseconds: 300)
    digitalWrite(pin: secondLedPin, value: LOW)
    digitalWrite(pin: ledPin, value: LOW)
  }
}

func updateAngle(newValue: UInt16) {
  delayAngle = newValue
  print(unsignedInt: newValue)
}

func incrementAngle() {
  if delayAngle < 2000 {
    updateAngle(newValue: delayAngle &+ 100)
  }
}

func decrementAngle() {
  if delayAngle > 100 {
    updateAngle(newValue: delayAngle &- 100)
  }
}

func centerPinPressed() {
  strobeOn = !strobeOn
}

SetupSerial(baudRate: 9600)

while(true) {
  checkRotaryEncoder(
    pin1: rotaryPin1,
    pin2: rotaryPin2,
    centerPin: centerPin,
    lastPinState: &lastPinState,
    clockwise: incrementAngle,
    counterclockwise: decrementAngle,
    centerPinPressed: centerPinPressed)
}
