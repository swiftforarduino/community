import AVR

typealias IntegerLiteralType = UInt8

let ledPin = 4
let pixels = 10

var buffer = iLED_Setup_Buffered(pin: ledPin, count: pixels, hasWhiteChip: true)

func displayAsBinary(_ num: UInt8) {
    var shiftedNum = num

    for i: UInt8 in 0..<8 {
        buffer[Int(i)] = shiftedNum & 1 == 1 ? iLEDRed : iLEDOff
        shiftedNum = shiftedNum >> 1
    }

    iLEDFastWriteBuffer()
}

var counter: UInt8 = 0

while(true) {
    displayAsBinary(counter)
    delay(ms: 1000)
    counter = counter &+ 1
}
