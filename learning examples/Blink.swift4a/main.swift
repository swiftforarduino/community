import AVR

// Blink
SetupSerial(baudRate: 9600)
pinMode(pin: 13, mode: OUTPUT)
print(message: Happy0)

while(true) {
  digitalWrite(pin: 13, value: HIGH)
  delay(milliseconds: 1)
  digitalWrite(pin: 13, value: LOW)
  delay(milliseconds: 13)
}
