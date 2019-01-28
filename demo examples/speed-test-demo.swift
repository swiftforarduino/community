import AVR
typealias IntegerLiteralType = UInt8

pinMode(pin: 13, mode: OUTPUT)
pinMode(pin: 6, mode: OUTPUT)

while(true) {
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)
  digitalWrite(pin: 6, value: HIGH)
  digitalWrite(pin: 6, value: LOW)

  delay(milliseconds: 1000)
  digitalWrite(pin: 13, value: HIGH)
  delay(milliseconds: 200)
  digitalWrite(pin: 13, value: LOW)
}
