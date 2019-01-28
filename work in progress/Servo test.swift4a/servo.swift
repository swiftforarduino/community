import AVR

var servoControlPin = 0
var microseconds: UInt16 = 0

func servoPulseSignal() {
  digitalWrite(pin: servoControlPin, value: HIGH)
  wait(us: microseconds)
  digitalWrite(pin: servoControlPin, value: LOW)
}

func startServo(angle: Float, pin: UInt8) {
  if pin >= 0 && pin <= 13 {
    servoControlPin = pin
    pinMode(pin: servoControlPin, mode: OUTPUT)
    setServoAngle(angle: angle)
  }
}

func setServoAngle(angle: Float) {
  var fraction = angle / 3.141592564
  
  if fraction < 0.0 {
    fraction = 0.0
  } else if fraction > 1.0 {
    fraction = 1.0
  }

  let fractionMs: Float = fraction * 1000.0
  let rawMs: UInt16 = Int16(Float(fractionMs))
  microseconds = 1000 + rawMs

  setupTimerIntervalInterruptCallback(tenthsOfAMillisecond: 200) {
    servoPulseSignal()
  }
}