import AVR
typealias IntegerLiteralType = UInt8

//------------------------------------------------------------------------------
// Setup
//------------------------------------------------------------------------------

let ledPin = 4
let pixels = 10

var buffer = iLED_Setup_Buffered(pin: ledPin, count: pixels, hasWhiteChip: true)

func rainbow() {
    let hueDeltaPerPixel = 255 / pixels

    for i in 0..<pixels {
        buffer[Int(i)] = iLEDFastMakeColor(hue: i &* hueDeltaPerPixel, saturation: 255, value: 255, white: 0)
    }

    iLEDFastWriteBuffer()
}

rainbow()

func rollBuffer() {
    let firstPixel = buffer[0]

    for i in 0..<pixels {
        buffer[Int(i)] = buffer[Int(i&+1)]
    }

    buffer[Int(pixels&-1)] = firstPixel
    iLEDFastWriteBuffer()
}

delay(ms: 1000)

while(true) {
    rollBuffer()
    delay(ms: 333)
}
