import AVR

SetupSerial()

var r: Float = 9

while(true) {
    r += 1
    print(sqrd(r))
    delay(ms: 1000)
}
