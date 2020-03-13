import AVR

typealias IntegerLiteralType = UInt8

var currentAngle: Int8 = 0
var angleDelta: Int8 = 10

startServo(angle: 0, pin: 9)

while(true) {
  wait(ms: 500)
  
  currentAngle = currentAngle &+ angleDelta
  
  if currentAngle > 90 {
    currentAngle = 0
  }

  setServoAngle(angle: UInt8(bitPattern: currentAngle))
}

//  This variant moves back and forth
//  if currentAngle > 90 {
//    angleDelta = -10
//    currentAngle = 0
//  } else if currentAngle < 0 {
//    angleDelta = 10
//    currentAngle = 0
//  }