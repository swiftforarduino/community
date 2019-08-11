// thermometer.swift4a
// Swift For Arduino
// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries: iLEDHelpers.swift DHT11.swift

import AVR
typealias IntegerLiteralType = Pin

//SetupSerial(baudRate: 9600)

let ledPin = 4
let pixels = 10
let sensorPin = 2

// setup the neopixels
var buffer = iLED_Setup_Buffered(pin: ledPin, count: pixels, hasWhiteChip: false)
// make a purple color for use later
let iLEDPurple = iLEDFastMakeColor(red: 50, green: 0, blue: 80, white: 0)


// in the main loop, check the temperature and humidity every 2 seconds
// then light up red and blue neopixels to show temperature and humidity
while(true) {
  let reading: (temperature: Int8, humidity: Int8, isValid: Bool) = readValues(pin: sensorPin)

//  print(message: Temperature0)
//  print(unsignedTinyInt: UInt8(reading.temperature))
//
//  print(message: Humidity1)
//  print(unsignedTinyInt: UInt8(reading.humidity))

  let tempLights = reading.temperature / Int8(4)
  let humidityLights = reading.humidity / Int8(10)

  for i:Int8 in Int8(0)..<Int8(pixels) {
      switch (i < tempLights, i < humidityLights) {
      case (true, true):
        buffer[Int(i)] = iLEDPurple
      case (true, false):
        buffer[Int(i)] = iLEDRed
      case (false, true):
        buffer[Int(i)] = iLEDBlue
      default:
          buffer[Int(i)] = iLEDOff
      }
  }

  iLEDFastWriteBuffer()

  delay(milliseconds: 2000)
}
