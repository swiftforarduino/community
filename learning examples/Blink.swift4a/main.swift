import AVR

// Blink

pinMode(pin: 13, mode: OUTPUT)

while(true) {
  // comment to check crosstalk on editors
  digitalWrite(pin: 13, value: HIGH)

  delay(milliseconds: 1000)
  digitalWrite(pin: 13, value: LOW)
  delay(milliseconds: 1000)
}
