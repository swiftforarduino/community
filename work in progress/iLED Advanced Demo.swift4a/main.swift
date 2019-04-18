//-------------------------------------------------------------------------------
//
// iLED Advanced Demo
// Swift for Arduino (S4A)
//
// Example illustrating support for intelligent or integrated LEDs (iLEDs),
// commonly known as NeoPixels.
//
// Created by Mark Swanson on 03/19/2019.
//
//-------------------------------------------------------------------------------

/*
    TODO:

    Find balance between slider read responsivesness and interferring with running
    test. If read too often, Theater Chase can be a bit choppy, if read too infrequently
    color changes lag behind user input.

    Consider having a button press fire and interrupt so mode change happens immediately.
*/

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
let speedSliderPin: UInt8 = 0
let hueSliderPin: UInt8 = 1
let brightnessSliderPin: UInt8 = 2
let button1Pin: UInt8 = 2
let rgbLEDPin: UInt8 = 13

//----------------------
// Pin setup
//----------------------
pinMode(pin: speedSliderPin, mode: INPUT)
pinMode(pin: hueSliderPin, mode: INPUT)
pinMode(pin: brightnessSliderPin, mode: INPUT)
pinMode(pin: button1Pin, mode: INPUT)
pinMode(pin: rgbLEDPin, mode: OUTPUT)

//----------------------
// Types
//----------------------
typealias RGBColor = (r: UInt8, g: UInt8, b: UInt8)
typealias HSVColor = (h: UInt8, s: UInt8, v: UInt8)
typealias LEDInstruction = (isOn: Bool, count: UInt16)

//----------------------
// Constants
//----------------------
let offColor = RGBColor(0, 0, 0)
let iLEDLatchDelayMicroseconds: UInt16 = 6

//----------------------
// Variables
//----------------------

// "global" variables are set by hardware and used by the various color "demo" routines
var globalDelay: UInt16 = 0               // Set by potentiometer position
var globalHue: UInt8 = 0                  // Set by potentiometer position
var globalBrightness: UInt8 = 0           // Set by potentiometer position
var globalSaturation: UInt8 = 255         // Fixed at fully saturated for this demo
var globalColorNeedsUpdate: Bool = true   // Flag indicating HSB to RGB color conversion is needed
var globalColor: RGBColor = offColor      // Color is calculated from hue, saturation, and brightness

// Potentiometers are read one at a time, in sequence
// sliderReadState keeps track of this process
// 0 = Ready to read hue
// 1 = Reading hue
// 2 = Ready to read brightness
// 3 = Reading brightness
// 4 = Ready to read speed
// 5 = Reading speed
var sliderReadState: UInt8 = 0

// Track progress through the demo
var currentDemoState: UInt8 = 0
let firstDemoState: UInt8 = 0
let lastDemoState: UInt8 = 2

// Track button processing
var buttonWasProcessed = false

//-------------------------------------------------------------------------------
// Color Space Conversion
//-------------------------------------------------------------------------------
func hsvToRGBColor(_ hsv: HSVColor) -> RGBColor {

    var region: UInt16
    var remainder: UInt16
    var p: UInt16
    var q: UInt16
    var t: UInt16

    // Completely desaturated?
    if (hsv.s == 0) {
        return RGBColor(hsv.v, hsv.v, hsv.v)
    }

    let hsvH16: UInt16 = UInt16(hsv.h)
    let hsvS16: UInt16 = UInt16(hsv.s)
    let hsvV16: UInt16 = UInt16(hsv.v)

    region = hsvH16 / 43
    remainder = (hsvH16 &- (region &* 43)) &* 6
    p = (hsvV16 &* (255 &- hsvS16)) >> 8
    q = (hsvV16 &* (255 &- ((hsvS16 &* remainder) >> 8))) >> 8
    t = (hsvV16 &* (255 &- ((hsvS16 &* (255 &- remainder)) >> 8))) >> 8

    var rgbR16: UInt16 = 0
    var rgbG16: UInt16 = 0
    var rgbB16: UInt16 = 0

    switch (region) {

        case 0:
        rgbR16 = hsvV16
        rgbG16 = t
        rgbB16 = p

        case 1:
        rgbR16 = q
        rgbG16 = hsvV16
        rgbB16 = p

        case 2:
        rgbR16 = p
        rgbG16 = hsvV16
        rgbB16 = t

        case 3:
        rgbR16 = p
        rgbG16 = q
        rgbB16 = hsvV16

        case 4:
        rgbR16 = t
        rgbG16 = p
        rgbB16 = hsvV16

        default:
        rgbR16 = hsvV16
        rgbG16 = p
        rgbB16 = q
    }

    let rgbColor: RGBColor = (UInt8(truncatingBitPattern: rgbR16 / 4),
                              UInt8(truncatingBitPattern: rgbG16 / 4),
                              UInt8(truncatingBitPattern: rgbB16 / 4))

    return rgbColor
}

//-------------------------------------------------------------------------------
func RGBToHSVColor(_ rgb: RGBColor) -> HSVColor {

    var hsv: HSVColor
    var rgbMin: UInt8
    var rgbMax: UInt8

    rgbMin = rgb.r < rgb.g ?
        (rgb.r < rgb.b ? rgb.r : rgb.b) :
        (rgb.g < rgb.b ? rgb.g : rgb.b)

    rgbMax = rgb.r > rgb.g ?
        (rgb.r > rgb.b ? rgb.r : rgb.b) :
        (rgb.g > rgb.b ? rgb.g : rgb.b)

    hsv.v = rgbMax
    if (hsv.v == 0) {
        hsv.h = 0
        hsv.s = 0
        return hsv
    }

    hsv.s = 255 &* (rgbMax &- rgbMin) / hsv.v
    if (hsv.s == 0) {
        hsv.h = 0
        return hsv
    }

    if (rgbMax == rgb.r) {
        hsv.h = 0 &+ 43 &* (rgb.g &- rgb.b) / (rgbMax &- rgbMin)
    }
    else if (rgbMax == rgb.g) {
        hsv.h = 85 &+ 43 &* (rgb.b &- rgb.r) / (rgbMax &- rgbMin)
    }
    else {
        hsv.h = 171 &+ 43 &* (rgb.r &- rgb.g) / (rgbMax &- rgbMin)
    }

    return hsv
}

//-------------------------------------------------------------------------------
// Manage Potentiometers
//-------------------------------------------------------------------------------
func getRGBColor() -> RGBColor {

    if globalColorNeedsUpdate {
        globalColor = hsvToRGBColor(HSVColor(globalHue, globalSaturation, globalBrightness))
        globalColorNeedsUpdate = false
    }

    return globalColor
}

//-------------------------------------------------------------------------------
func readSpeedAsync() {

    // Kick off a A/D conversion of speed slider
    analogReadAsync(pin: speedSliderPin) { value in

        // Store global speed and advance state
        globalDelay = value
        nextSliderState()
    }
}

//-------------------------------------------------------------------------------
func readBrightnessAsync() {

    // Kick off a A/D conversion of brightness slider
    analogReadAsync(pin: brightnessSliderPin) { value in

        // Store global brightness and advance state
        globalBrightness = UInt8(truncatingBitPattern: value / 4)
        globalColorNeedsUpdate = true
        nextSliderState()
    }
}

//-------------------------------------------------------------------------------
func readHueAsync() {

    // Kick off a A/D conversion of color slider
    analogReadAsync(pin: hueSliderPin) { value in

        // Store global hue and advance state
        globalHue = UInt8(truncatingBitPattern: value / 4)
        nextSliderState()
    }
}

//-------------------------------------------------------------------------------
func nextSliderState() {

    // Advance state
    sliderReadState = sliderReadState &+ 1

    // If past final state, start over
    if sliderReadState > 5 {
        sliderReadState = 0
    }
}

//-------------------------------------------------------------------------------
func manageSliders() {

    switch sliderReadState {

        case 0:
        // Ready to read hue
        nextSliderState()
        readHueAsync()

        case 1:
        // Reading hue, wait
        break

        case 2:
        // Ready to read brightness
        nextSliderState()
        readBrightnessAsync()

        case 3:
        // Reading brightness, wait
        break

        case 4:
        // Ready to read speed
        nextSliderState()
        readSpeedAsync()

        case 5:
        // Reading speed, wait
        break

        default:
        // Invalid state, do nothing
        break
    }
}

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
func iLEDColorWipeDynamic(pin: UInt8 = rgbLEDPin,
                        count: UInt16 = numberPixels,
                      reverse: Bool = false,
                     grbOrder: Bool = true) {

    // Display a single color on many pixels in a sequence one after the other until all are lit
    guard count > 0 else { return }

    let speedDivider: UInt16 = 20

    if reverse {
        // Wipe in reverse order
        for loop: UInt16 in 0...count {

            let color: RGBColor = getRGBColor()
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

            wait(ms: globalDelay / speedDivider)
        }
    }
    else {
          // Wipe in forward order
        for numberLit: UInt16 in 0..<count {

            let color: RGBColor = getRGBColor()
            var index: UInt16 = 0
            while (index <= numberLit) {
                iLEDWriteRGBPixel(pin: pin, color: color, grbOrder: grbOrder)
                index = index &+ 1
            }

            wait(ms: globalDelay / speedDivider)
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
                    count: UInt16 = numberPixels,
                 numberOn: UInt16 = 3,
                numberOff: UInt16 = 3,
                 grbOrder: Bool = true) {

    // Theatre style crawling lights

    guard count > 0 else {
        return
    }

    // We want this sequence to end with a full gap of off pixels so this sequence can be repeated seamlessly
    let totalFrames: UInt16 = numberOn + numberOff

    // Start with on pixels at end of strip
    var instruction: LEDInstruction = (isOn: true, count: numberOn)

    // Frame is one step in a full sequence
    for _ in 1...totalFrames { // Frame

        // Write all pixels in each frame
        for _ in 1...count { // Pixel

            // Write pixel colored or off
            if instruction.isOn {
                iLEDWriteRGBPixel(pin: pin,
                                color: getRGBColor(),
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
        wait(ms: globalDelay / 6)
    }
}

//-------------------------------------------------------------------------------
func iLEDLarsonScanner (pin: UInt8 = rgbLEDPin,
                      color: RGBColor,
                      count: UInt16 = numberPixels,
                      delay: UInt16,
                   grbOrder: Bool = true) {

    // Battlestar Galactica inspired back and forth scanning
    // https://www.instructables.com/id/Build-the-Ultimate-Larson-Scanner/

    // TODO: Implement
}

//-------------------------------------------------------------------------------
// LED Test Functions
//-------------------------------------------------------------------------------
func simpleColorTest() {

    // Light all LEDs in a single color
    iLEDShowColor(color: getRGBColor())
}

//-------------------------------------------------------------------------------
func colorWipeTest() {

    // Light LEDs one at a time from one end to the other (forwards, then backwards)
    iLEDColorWipeDynamic()
    iLEDColorWipeDynamic(reverse: true)
}

//-------------------------------------------------------------------------------
func theaterChaseTest() {

    // Pixels chase down strip
    iLEDTheaterChase(numberOn: 3,
                    numberOff: 5)
}

//-------------------------------------------------------------------------------
// Demo State
//-------------------------------------------------------------------------------
func advanceDemoState() {

    currentDemoState = currentDemoState &+ 1

    // See if past final state
    if currentDemoState > lastDemoState {
        currentDemoState = firstDemoState
    }

    iLEDOff()
}

//-------------------------------------------------------------------------------
// Final Setup
//-------------------------------------------------------------------------------

delay(milliseconds: 100)  // Allow iLED chips to wake up and stabliize
iLEDOff()                 // All iLEDs off
delay(milliseconds: 1000) // Wait a bit

// Start repeating interrupt to process sliders (fires every 10ms)
setupTimerIntervalInterruptCallback(tenthsOfAMillisecond: 1000) {
    manageSliders()
}

//-------------------------------------------------------------------------------
// Main Loop
//-------------------------------------------------------------------------------
while(true) {

    // Read the button
    let buttonPressed = digitalRead(pin: button1Pin)

    // Check if button is pressed
    if buttonPressed == true {

        // Check to see if we've already processed this button press
        if buttonWasProcessed == false {

            // Indicate precioessed and advance to the next demo state
            buttonWasProcessed = true
            advanceDemoState()
        }
    }
    else {
        // Button is not pressed, reset so we can process next press
        buttonWasProcessed = false
    }

    // Run the demo based on curent demo state
    switch currentDemoState {

        case 0:
        simpleColorTest()

        case 1:
        colorWipeTest()
        break

        case 2:
        theaterChaseTest()
        break

        default:
        break
    }

    delay(milliseconds: 1)
}

//-------------------------------------------------------------------------------
