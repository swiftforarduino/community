import AVR

// Blink
SetupSerial()
pinMode(pin: 13, mode: OUTPUT)
print(message: Welcome0)

while(true) {
  digitalWrite(pin: 13, value: HIGH)
  delay(milliseconds: 1000)
  digitalWrite(pin: 13, value: LOW)
  delay(milliseconds: 1000)
}
