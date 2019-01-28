import AVR

let IN1 = 8
let IN2 = 9
let IN3 = 10
let IN4 = 11

var currentStep = 0
var forward = true

func setupStepper() {
  pinMode(pin: IN1, mode: OUTPUT)
  pinMode(pin: IN2, mode: OUTPUT)
  pinMode(pin: IN3, mode: OUTPUT)
  pinMode(pin: IN4, mode: OUTPUT)
}

func updateStep() {

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

func step(count: UInt16) {
  var i: UInt16 = 0
  while i < count {

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

  updateStep()
  i = i + 1
  }
}
