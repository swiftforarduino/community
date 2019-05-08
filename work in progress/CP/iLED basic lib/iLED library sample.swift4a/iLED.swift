import AVR

//-------------------------------------------------------------------------------
// Setup
//-------------------------------------------------------------------------------

//----------------------
// Hardware constants
// (match your hardware)
//----------------------
private var iLEDNumberPixels: UInt8 = 60
private var iLEDPixelTypeRGB = false // true = rgb (3 chip) pixels, false = rgbw (4 chip) pixels
private var iLEDGrbOrder = false
private var iLEDBufferSize: Int {
    return Int(iLEDNumberPixels &* 4)
}

//----------------------
// Pin definitions
// (match your hardware)
//----------------------
private var iLEDPin: UInt8 = 4

//----------------------
// Types
//----------------------
typealias iLEDColor = (r: UInt8, g: UInt8, b: UInt8, w: UInt8)

//----------------------
// Constants
//----------------------
private let redColor = iLEDColor(255, 0, 0, 0)
private let greenColor = iLEDColor(0, 255, 0, 0)
private let blueColor = iLEDColor(0, 0, 255, 0)
private let rgbWhiteColor = iLEDColor(255, 255, 255, 0)
private let rgbwWhiteColor = iLEDColor(0, 0, 0, 255)
private let rgbwSuperWhiteColor = iLEDColor(255, 255, 255, 255)
private let offColor = iLEDColor(0, 0, 0, 0)
private let iLEDLatchDelayMicroseconds:UInt16 = 6

private var iLEDBuffer: UnsafeMutablePointer<UInt8> = {
    // loaded and cleared, first time only, on demand...
    // never deallocated, setup must have been called first
    // or the results will be wrong
    let ptr = UnsafeMutablePointer<UInt8>.allocate(capacity: iLEDBufferSize)
    ptr.initialize(to: 0, count: iLEDBufferSize)
    return ptr
}()

//----------------------
// Pin setup
//----------------------
func iLEDSetup(
    numberPixels np: UInt8,
    pixelPin pp: UInt8,
    pixelTypeRGB rgb: Bool = false,
    grbOrder grb: Bool = false) {

    if np > 60 {
        iLEDNumberPixels = 60
    } else {
        iLEDNumberPixels = np
    }

    iLEDPin = pp
    iLEDGrbOrder = grb
    iLEDPixelTypeRGB = rgb

    pinMode(pin: pp, mode: OUTPUT)
}

//----------------------
// Variables
//----------------------
private var whiteColor: iLEDColor {
    if iLEDPixelTypeRGB {
        return rgbWhiteColor
    }
    return rgbwWhiteColor
}

//-------------------------------------------------------------------------------
// iLED Control Functions
//-------------------------------------------------------------------------------
func iLEDWritePixel(color: iLEDColor,
         latchImmediately: Bool = false) {

    // This is the basic function for setting a single iLED that has 3 LED chips
    // (red, green, blue). It is normally called many times in succession (once
    // for each pixel in a strip or ring).
    //
    // For each successive write, data is pushed the data to next pixel in the
    // strip so multiple calls write pixels in a strip first to last.
    //
    // latchImmediately causes data sent so far to be displayed and resets their
    // circuitry such that future calls to this function will start writing data
    // at pixel 0. This flag is rarely set to true. Normally, many calls are made
    // in a row to send data to pixels and when the program continues doing other
    // processing, the iLEDS will automatically latch and display (after a 6 uS delay).
    //
    // grbOrder=true will send data: green, red, blue for part Numbers : WS2812, WS2813
    // grbOrder=false will send data: red, green, blue for part Numbers: WS2811, 2818

    let byte1: UInt8
    let byte2: UInt8
    let byte3: UInt8
    let byte4: UInt8

    if iLEDGrbOrder {
        byte1 = color.g
        byte2 = color.r
        byte3 = color.b
        byte4 = color.w
    }
    else {
        byte1 = color.r
        byte2 = color.g
        byte3 = color.b
        byte4 = color.w
    }

    iLEDSendByte(pin: iLEDPin, byte: byte1)
    iLEDSendByte(pin: iLEDPin, byte: byte2)
    iLEDSendByte(pin: iLEDPin, byte: byte3)

    if !iLEDPixelTypeRGB {
        iLEDSendByte(pin: iLEDPin, byte: byte4)
    }

    // Allow time for data to latch if requested
    if latchImmediately {
        delay(microseconds: iLEDLatchDelayMicroseconds)
    }
}

func iLEDSendBuffer() {
    // iterate through the LED buffer, writing values
    // buffer bytes are as rgbw, regardless of what model of neopixel we're setup to
    for pixel: Int in Int(0)..<Int(iLEDBufferSize) {
        let r = iLEDBuffer[pixel]
        let g = iLEDBuffer[pixel &+ 1]
        let b = iLEDBuffer[pixel &+ 2]
        let w = iLEDBuffer[pixel &+ 3]
        let color: iLEDColor = (r: r, g: g, b: b, w: w)
        iLEDWritePixel(color: color)
    }
}

func iLEDSetBuffer(pixel: UInt8, color: iLEDColor) {
    guard pixel <= 60 else {
        return
    }

    iLEDBuffer[Int(pixel)] = color.r
    iLEDBuffer[Int(pixel) &+ 1] = color.g
    iLEDBuffer[Int(pixel) &+ 2] = color.b
    iLEDBuffer[Int(pixel) &+ 3] = color.w
}

func iLEDClearBuffer() {
    iLEDBuffer.initialize(to: 0, count: iLEDBufferSize)
}

// next functions would load/store to/from EEPROM
