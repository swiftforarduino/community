import AVR

let sensorPin: UInt8 = 0
let ledPin: UInt8 = 13






while(true) {
  let sensorValue = slowAnalogRead(pin: sensorPin)
  digitalWrite(pin: ledPin, value: HIGH)
  delay(milliseconds: sensorValue)
  digitalWrite(pin: ledPin, value: LOW)
  delay(milliseconds: sensorValue)
}
