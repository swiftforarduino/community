//------------------------------------------------------------------------------
//
// Fan Speed.swift4a (ver 2.0)
// Swift For Arduino 3.0+
//
// Created by Swift For Arduino on 03/10/2020.
//
// NOTE: Modifications to the "Libraries:" line below will affect the build.
// Libraries: unsafeMAX30105.swift
//------------------------------------------------------------------------------
/*
    ____________________________________________________________________________
    Purpose
    Use the MAX30105 sensor to measure blood oxygen.
    ____________________________________________________________________________
    Hardware Configuration
    - MAX30105 breakout board with sensor connected to I2C and power
    ____________________________________________________________________________
    Notes
    1. Copied from SparkFun code.
    2. As stated in examples, the board must be attached to flexible wires and
    use a rubber band or similar device to hold the sensor in place on the fleshy
    part of your finger, if it moves, readings will not work.
    3. In my tests, the original version did not show an accurate heart rate but
    spO2 was good enough.
    4. In this current iteration of the swift version, spO2 is also unstable and
    needs bugfixing, also the interface is far too chatty (remove this comment
    when all fixed).
    ____________________________________________________________________________
    Experiments
    - Feed the data into a data logger for overnight use when asleep, such as a
    raspberry pi via bluetooth, or serial/usb.
    ____________________________________________________________________________
*/

import AVR

typealias IntegerLiteralType = UInt8

// convenience extension - unsafe buffers
// these buffers are *NOT* managed by ARC
extension UnsafeMutablePointer where Pointee == UInt16 {
  /// Make a new byte buffer, with the length described and filled with the
  /// byte value specified. Note: this memory is allocated from the heap using
  /// malloc so make sure to call release() when you have finished with the
  /// buffer or you will rapidly run out of RAM. Likewise recursion, interations
  /// etc. can make you run out of RAM quickly, use this with care.
  static func create(len: UInt8, fill: UInt16) -> UnsafeMutablePointer<UInt16> {
      let buf = UnsafeMutablePointer<UInt16>.allocate(capacity: Int(len))
      buf.initialize(to: fill, count: Int(len))
      return buf
  }

  // note, due to a current back end bug, the subscript must be fileprivate not public
  // or compilation fails, this may be fixed by the time you read this
  fileprivate subscript(index: UInt8) -> UInt16 {
    get {
      return self[Int(index)]
    }
    set {
      self[Int(index)] = newValue
    }
  }

  /// Release the memory used by this buffer. Do not use the buffer after you
  /// have called this function.
  func release() {
      deallocate(capacity: 0) // capacity has no effect in the internals
  }
}

SetupSerial()
pinMode(pin: D13, mode: OUTPUT)

if max301Start() {
  print(message: Started0)
} else {
    print(message: NotFound0)
    // flash quickly to indicate fault
    while(true) {
        digitalWrite(pin: D13, value: HIGH)
        delay(milliseconds: 50)
        digitalWrite(pin: D13, value: LOW)
        delay(milliseconds: 50)
    }
}

max301Setup(
    powerLevel: 60,
    sampleAverage: 4,
    ledMode: 2,
    sampleRate: 100,
    pulseWidth: 411,
    adcRange: 4096)

print(message: Setup0)

let bufferLength = 100 //buffer length of 100 stores 4 seconds of samples running at 25sps
var irBuffer = UnsafeMutablePointer<UInt16>.create(len: bufferLength, fill: 0)
var redBuffer = UnsafeMutablePointer<UInt16>.create(len: bufferLength, fill: 0)
// (note, normally we would need to free the buffers but we do not, see below)

var SPO2: Int32 = 0
var isSPO2Valid: Bool = false
var HR: Int32 = 0
var isHRValid: Bool = false
var readLEDState = false

func readSamples(from start: UInt8, to end: UInt8) {
  var i = start

  while i < end {
    // wait until samples appear
    while max301AvailableSamples() == 0 {
      let _ = max301CheckForSamples()
    }

    redBuffer[i] = UInt16(truncatingBitPattern: max301Red())
    irBuffer[i] = UInt16(truncatingBitPattern: max301IR())
    max301GetNextSample()
    i = i &+ 1
  }
}

func rotateBuffersLeft(by: UInt8, upTo: UInt8) {
  var i = 0
  while i < upTo {
    redBuffer[i] = redBuffer[i &+ by]
    irBuffer[i] = irBuffer[i &+ by]
    i = i &+ 1
  }
}

func updateStats() {
  max301CalculateSats(
    IRBuffer: irBuffer,
    redBuffer: redBuffer,
    bufferLength: Int32(bufferLength),
    SPO2: &SPO2,
    isSPO2Valid: &isSPO2Valid,
    HR: &HR,
    isHRValid: &isHRValid)
}

func printStats() {
  if isSPO2Valid {
    print(message: SpO20)
    print(longInt: SPO2)
  } else {
    print(message: SpO21)
  }

  if isHRValid {
    print(message: HR0)
    print(longInt: HR)
  } else {
    print(message: HR1)
  }
}
 
readSamples(from: 0, to: bufferLength)

updateStats()
printStats()

while(true) {
  readLEDState = !readLEDState
  digitalWrite(pin: D13, value: readLEDState)
  rotateBuffersLeft(by: 25, upTo: 75)
  readSamples(from: 75, to: bufferLength)
  updateStats()
  printStats()
}

// normally it is vital to free buffers once they have finished being used but in this case it is not necessary
// there are only two buffers created, at startup and they are never freed as they're needed the whole time the
// program is running
