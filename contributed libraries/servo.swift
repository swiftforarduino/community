import AVR

public private(set) var currentServoAngle: UInt8 = 0
private var servoControlPin = 0
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

  setupTimerIntervalInterruptCallback(tenthsOfAMillisecond: 200) {
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


