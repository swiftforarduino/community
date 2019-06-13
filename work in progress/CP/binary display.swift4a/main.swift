import AVR
typealias IntegerLiteralType = UInt8

//------------------------------------------------------------------------------
// Constants
//------------------------------------------------------------------------------
let ledPin = 4
let pixels = 10

//------------------------------------------------------------------------------
// Create buffer
//------------------------------------------------------------------------------
var buffer = iLED_Setup_Buffered(pin: ledPin, count: pixels, hasWhiteChip: true)

//------------------------------------------------------------------------------
// Create colors
//------------------------------------------------------------------------------
let dimRed = iLEDFastMakeColor(red: 10, green: 0, blue: 0, white: 0)

//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------
func rollBuffer() {
    let firstPixel = buffer[0]

    for i in 0..<pixels {
        buffer[Int(i)] = buffer[Int(i&+1)]
    }

    buffer[Int(pixels&-1)] = firstPixel
    iLEDFastWriteBuffer()
}

func allOnDim() {
    iLED_AllOn(color: dimRed)
}

func displayAsBinary(_ num: UInt8) {
    var shiftedNum = num

    for i: UInt8 in 0..<8 {
        let bit = shiftedNum & 1 == 1
        buffer[Int(i)] = bit ? iLEDRed : iLEDOff
        shiftedNum = shiftedNum >> 1
    }

    iLEDFastWriteBuffer()
}


//------------------------------------------------------------------------------
// Setup
//------------------------------------------------------------------------------
SetupSerial(baudRate: 9600)
pinMode(pin: 13, mode: OUTPUT)
allOnDim()
delay(ms: 1000)

//------------------------------------------------------------------------------
// Run...
//------------------------------------------------------------------------------
while(true) {
    delay(ms: 100)

  if available() {
    let byte = read()
    if byte >= 48 && byte < 58 {
      let inputAsNumber = byte &- 48
      displayAsBinary(inputAsNumber)
    }
  }
}
