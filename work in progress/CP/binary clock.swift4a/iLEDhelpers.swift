import AVR

//----------------------
// Constants
//----------------------
public let iLEDLatchDelayMicroseconds:UInt16 = 6
public var pixelCount: UInt8 = 0

//-------------------------------------------------------------------------------
// iLED Buffered
//-------------------------------------------------------------------------------
public func iLED_Setup_Buffered(pin: UInt8,
                                 count: UInt8,
                          hasWhiteChip: Bool,
                          grbDataOrder: Bool = true)
                           -> UnsafeMutablePointer<iLEDFastColor> {

    pinMode(pin: pin, mode: OUTPUT)

    if let buffer = iLEDFastSetupBuffered (
        pin: pin,
        pixelCount: count,
        hasWhite: hasWhiteChip,
        grbOrdered: grbDataOrder) {

        pixelCount = count

        // Delay to let iLEDs stabilize then turn all off
        delay(milliseconds: 10)

        iLED_AllOff()

        // latch off
        delay(milliseconds: 10)

        return buffer
    } else {
        iLED_Setup(
            pin: pin,
            count: count,
            hasWhiteChip: hasWhiteChip,
            grbDataOrder: grbDataOrder)

        indicateFail()
    }
}

public func indicateFail() -> Never {
    while true {
        iLEDFastWritePixel(color: iLEDRed)
        delay(ms: 1000)
        iLEDFastWritePixel(color: iLEDOff)
        delay(ms: 1000)
    }
}

// when version 2 of the compiler and AVR Lib are finished, will switch on this
// kind of interface, but it needs more runtime than we currently have available
// public func iLED_WritePixels(pixels: iLEDFastColor...) {
// }

//-------------------------------------------------------------------------------
// iLED Control Functions
//-------------------------------------------------------------------------------
public func iLED_Setup(pin: UInt8,
                     count: UInt8,
              hasWhiteChip: Bool,
              grbDataOrder: Bool = true) {

    pinMode(pin: pin, mode: OUTPUT)

    iLEDFastSetup(
        pin: pin,
        pixelCount: count,
        hasWhite: hasWhiteChip,
        grbOrdered: grbDataOrder)

    pixelCount = count

    // Delay to let iLEDs stabilize then turn all off
    delay(milliseconds: 10)

    iLED_AllOff()

    // latch off
    delay(milliseconds: 10)
}

public func iLED_AllOn(color: iLEDFastColor) {
    // Display a single color on all pixels
    for _ in 1...pixelCount {
        iLEDFastWritePixel(color: color)
    }

    // Latch so color is displayed
    delay(microseconds: iLEDLatchDelayMicroseconds)
}

//-------------------------------------------------------------------------------
func iLED_AllOff() {
    // Turn off all pixels
    iLED_AllOn(color: iLEDOff)
}

// for debugging if needed...
//      print(byte: byte)
//func signalByPulses(_ count: UInt8) {
//    var i: UInt8 = 0
//    while i < count {
//        digitalWrite(pin: 13, value: HIGH)
//        delay(milliseconds: 100)
//        digitalWrite(pin: 13, value: LOW)
//        delay(milliseconds: 100)
//        i = i &+ 1
//    }
//}
//
