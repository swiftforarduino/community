//-------------------------------------------------------------------------------
//
// iLED Simple Demo
// Swift for Arduino (S4A)
//
// Example illustrating basic support for integrated LEDs (iLEDs),
// commonly known as NeoPixels.
//
// Created by Mark Swanson on 03/19/2019.
//
//-------------------------------------------------------------------------------

import AVR

//-------------------------------------------------------------------------------
// Setup
//-------------------------------------------------------------------------------

//----------------------
// Hardware constants
// (match your hardware)
//----------------------
let numberPixels: UInt16 = 30

//----------------------
// Pin definitions
// (match your hardware)
//----------------------
let rgbLEDPin: UInt8 = 13

//----------------------
// Pin setup
//----------------------
pinMode(pin: rgbLEDPin, mode: OUTPUT)

//----------------------
// Types
//----------------------
typealias RGBColor = (r: UInt8, g: UInt8, b: UInt8)
typealias LEDInstruction = (isOn: Bool, count: UInt16)

//----------------------
// Constants
//----------------------
let redColor = RGBColor(255, 0, 0)
let greenColor = RGBColor(0, 255, 0)
let blueColor = RGBColor(0, 0, 255)
let whiteColor = RGBColor(255, 255, 255)
let offColor = RGBColor(0, 0, 0)
let iLEDLatchDelayMicroseconds:UInt16 = 6

//----------------------
// Variables
//----------------------
// none

//-------------------------------------------------------------------------------
// iLED Control Functions
//-------------------------------------------------------------------------------
func iLEDWriteRGBPixel(pin: UInt8,
                     color: RGBColor,
                  grbOrder: Bool = true,
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

    if grbOrder {
        iLEDSendByte(pin: pin, byte: color.g)
        iLEDSendByte(pin: pin, byte: color.r)
        iLEDSendByte(pin: pin, byte: color.b)
    }
    else {
        iLEDSendByte(pin: pin, byte: color.r)
        iLEDSendByte(pin: pin, byte: color.g)
        iLEDSendByte(pin: pin, byte: color.b)
    }

    // Allow time for data to latch if requested
    if latchImmediately {
        delay(microseconds: iLEDLatchDelayMicroseconds)
    }
}

//-------------------------------------------------------------------------------
func iLEDShowColor(pin: UInt8 = rgbLEDPin,
                 color: RGBColor,
                 count: UInt16 = numberPixels,
              grbOrder: Bool = true,
      latchImmediately: Bool = true) {

    guard count > 0 else { return }

    // Display a single color on many pixels
    for _ in 1...count {
        iLEDWriteRGBPixel(pin: pin, color: color, grbOrder: grbOrder)
    }

    if latchImmediately {
        delay(microseconds: iLEDLatchDelayMicroseconds)
    }
}

//-------------------------------------------------------------------------------
func iLEDOff(pin: UInt8 = rgbLEDPin,
           count: UInt16 = numberPixels,
        grbOrder: Bool = true) {

    guard count > 0 else { return }

    // Turn off many pixels
    iLEDShowColor(pin: pin,
                color: offColor,
                count: count,
             grbOrder: grbOrder)
}

//-------------------------------------------------------------------------------
func iLEDColorWipe(pin: UInt8 = rgbLEDPin,
                 color: RGBColor,
                 count: UInt16 = numberPixels,
                 delay: UInt16,
               reverse: Bool = false,
              grbOrder: Bool = true) {

    // Display a single color on many pixels in a sequence one after the other until all are lit
    guard count > 0 else { return }

    if reverse {
        // Wipe in reverse order
        for loop in 0...count {

            let numberLit = count &- loop
            var index: UInt16 = 0

            // Turn on pixels from start
            while (index < numberLit) {
                iLEDWriteRGBPixel(pin: pin, color: color, grbOrder: grbOrder)
                index = index &+ 1
            }

            // Turn off the rest of the pixels
            while (index <= count) {
                iLEDWriteRGBPixel(pin: pin, color: offColor, grbOrder: grbOrder)
                index = index &+ 1
            }

            wait(ms: delay)
        }
    }
    else {
        // Wipe in forward order
        for numberLit in 0..<count {

            var index: UInt16 = 0
            while (index <= numberLit) {
                iLEDWriteRGBPixel(pin: pin, color: color, grbOrder: grbOrder)
                index = index &+ 1
            }

            wait(ms: delay)
        }
    }
}

//-------------------------------------------------------------------------------
func nextLEDInstruction(instruction: LEDInstruction,
                           numberOn: UInt16,
                          numberOff: UInt16) -> LEDInstruction {

    // Used by TheaterChase
    var newInstruction: LEDInstruction = instruction

    newInstruction.count = newInstruction.count &- 1

    // Is is time to switch to other state?
    if newInstruction.count == 0 {

        // Flip whether we are writing colored or off pixels
        newInstruction.isOn = !newInstruction.isOn

        // Reset the count
        if newInstruction.isOn {
            newInstruction.count = numberOn
        }
        else {
            newInstruction.count = numberOff
        }
    }

    return newInstruction
}

//-------------------------------------------------------------------------------
func iLEDTheaterChase(pin: UInt8 = rgbLEDPin,
                    color: RGBColor,
                    count: UInt16 = numberPixels,
                 numberOn: UInt16 = 3,
                numberOff: UInt16 = 3,
                    delay: UInt16,
                 grbOrder: Bool = true) {

    // Theater style crawling lights

    guard count > 0 else {
        return
    }

    // We want this sequence to end with a full gap of off pixels so this sequence can be repeated seamlessly
    let totalFrames: UInt16 = numberOn &+ numberOff

    // Start with on pixels at end of strip
    var instruction: LEDInstruction = (isOn: true, count: numberOn)

    // Frame is one step in a full sequence
    for _ in 1...totalFrames { // Frame

        // Write all pixels in each frame
        for _ in 1...count { // Pixel

            // Write pixel colored or off
            if instruction.isOn {
                iLEDWriteRGBPixel(pin: pin,
                                color: color,
                             grbOrder: grbOrder)
            }
            else {
                iLEDWriteRGBPixel(pin: pin,
                                color: offColor,
                             grbOrder: grbOrder)
            }

            instruction = nextLEDInstruction(instruction: instruction,
                                                numberOn: numberOn,
                                               numberOff: numberOff)
        }

        instruction = nextLEDInstruction(instruction: instruction,
                                            numberOn: numberOn,
                                           numberOff: numberOff)

        // Delay between frames
        wait(ms: delay)
    }
}

//-------------------------------------------------------------------------------
// LED Test Functions
//-------------------------------------------------------------------------------
func testColor() {

    // Turn all pixels on instantly with a single color
    let pixelTimingDelay: UInt16 = 2000

    // All red
    iLEDShowColor(color: redColor)
    delay(milliseconds: pixelTimingDelay)

    // All green
    iLEDShowColor(color: greenColor)
    delay(milliseconds: pixelTimingDelay)

    // All blue
    iLEDShowColor(color: blueColor)
    delay(milliseconds: pixelTimingDelay)

    // All white
    iLEDShowColor(color: whiteColor)
    delay(milliseconds: pixelTimingDelay)
}

//-------------------------------------------------------------------------------
func testRandomColors() {

    // Turn all pixels on instantly with random colors

    let timingDelay: UInt16 = 250

    // Seed the random number generator
    let value = slowAnalogRead(pin: 2)
    srandom(seed: value)

    for _ in 1...20 {

        let random4 = longRandom4()

        // Assign color components
        var red = random4.byte1
        var green = random4.byte2
        var blue = random4.byte3

        // Knock out one component so we aren't getting a shade of white
        switch random4.byte4 {
        case 0...84:
            blue = 0
        case 85...168:
            green = 0
        default:
            red = 0
        }

        let randomColor = RGBColor(red, green, blue)
        iLEDShowColor(color: randomColor)
        delay(milliseconds: timingDelay)
    }
}

//-------------------------------------------------------------------------------
func testColorFade() {

     // Fade all LEDs on then fade all off

    let pixelTimingDelay: UInt16 = 1

    // All LEDs off
    iLEDOff()

    for colorStep in 1...4 {

        var r: UInt8 = 0
        var g: UInt8 = 0
        var b: UInt8 = 0

        // Fade in
        let start: UInt8 = 0
        let end: UInt8 = 255
        for level in start...end {

            r = 0
            g = 0
            b = 0

            switch colorStep {
            case 1:
                r = level
            case 2:
                g = level
            case 3:
                b = level
            case 4:
                r = level
                g = level
                b = level
            default:
                break
            }

            iLEDShowColor(color: RGBColor(r, g, b))
            delay(milliseconds: pixelTimingDelay)
        }

        // Fade out
        for level in start...end {

            r = 0
            g = 0
            b = 0

            switch colorStep {
            case 1:
                r = 255 &- level
            case 2:
                g = 255 &- level
            case 3:
                b = 255 &- level
            case 4:
                r = 255 &- level
                g = 255 &- level
                b = 255 &- level
            default:
                break
            }

            iLEDShowColor(color: RGBColor(r, g, b))
            delay(milliseconds: pixelTimingDelay)
        }
    }
}

//-------------------------------------------------------------------------------
func testColorWipe() {

    let pixelTimingDelay: UInt16 = 5

    for _ in 1...3 {

        // Wipe forward, then backwards red
        iLEDColorWipe(color: redColor, delay: pixelTimingDelay)
        iLEDColorWipe(color: redColor, delay: pixelTimingDelay, reverse: true)

        // Wipe forward, then backwards green
        iLEDColorWipe(color: greenColor, delay: pixelTimingDelay)
        iLEDColorWipe(color: greenColor, delay: pixelTimingDelay, reverse: true)

        // Wipe forward, then backwards blue
        iLEDColorWipe(color: blueColor, delay: pixelTimingDelay)
        iLEDColorWipe(color: blueColor, delay: pixelTimingDelay, reverse: true)

        // Wipe forward, then backwards white
        iLEDColorWipe(color: whiteColor, delay: pixelTimingDelay)
        iLEDColorWipe(color: whiteColor, delay: pixelTimingDelay, reverse: true)
    }
}

//-------------------------------------------------------------------------------
func testTheaterChase() {

    let pixelTimingDelay: UInt16 = 35
    let numberOfCycles: UInt16 = 5
    let pixelsOn: UInt16 = 3
    let pixelsOff: UInt16 = 5

    // Chase red
    for _ in 1...numberOfCycles {
        iLEDTheaterChase(color: redColor,
                      numberOn: pixelsOn,
                     numberOff: pixelsOff,
                         delay: pixelTimingDelay)
    }

    // Chase green
    for _ in 1...numberOfCycles {
        iLEDTheaterChase(color: greenColor,
                      numberOn: pixelsOn,
                     numberOff: pixelsOff,
                         delay: pixelTimingDelay)
    }

    // Chase blue
    for _ in 1...numberOfCycles {
        iLEDTheaterChase(color: blueColor,
                      numberOn: pixelsOn,
                     numberOff: pixelsOff,
                         delay: pixelTimingDelay)
    }

    // Chase white
    for _ in 1...numberOfCycles {
        iLEDTheaterChase(pin: rgbLEDPin,
                       color: whiteColor,
                    numberOn: pixelsOn,
                   numberOff: pixelsOff,
                       delay: pixelTimingDelay)
    }
}

//-------------------------------------------------------------------------------
// Final Setup
//-------------------------------------------------------------------------------

delay(milliseconds: 100)  // Allow iLED chips to wake up and stabliize
iLEDOff()                 // All iLEDs off
delay(milliseconds: 1000) // Wait a bit

//-------------------------------------------------------------------------------
// Main Loop
//-------------------------------------------------------------------------------
while(true) {

    // Run demos
    testColor()
    testRandomColors()
    testColorFade()
    testColorWipe()
    testTheaterChase()

    delay(milliseconds: 100)
}

//-------------------------------------------------------------------------------
