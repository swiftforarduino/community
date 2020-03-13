import AVR

// Blink and serial output demo
SetupSerial(baudRate: 9600)
pinMode(pin: 13, mode: OUTPUT)
print(message: Hello0)

while(true) {
  digitalWrite(pin: 13, value: HIGH)
  delay(milliseconds: 1000)
  digitalWrite(pin: 13, value: LOW)
  delay(milliseconds: 1000)
}
