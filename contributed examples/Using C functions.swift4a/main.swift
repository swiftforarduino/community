import AVR

SetupSerial()

pinMode(pin: D13, mode: OUTPUT)

var r: Float = 9

while(true) {
    r += 1
    print(sqrd(r))
    delay(ms: 1000)
    digitalWrite(pin: 13, value: HIGH)
    delay(milliseconds: 1000)
    digitalWrite(pin: 13, value: LOW)
    delay(milliseconds: 1000)
}
