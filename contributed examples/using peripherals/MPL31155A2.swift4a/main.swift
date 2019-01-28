import AVR
typealias IntegerLiteralType = UInt8

// setup I2C with standard parameters
setupI2C(speed: 0x47, premultiplier: 0)

// enable the MPL31155A2 sensor for reading oversampled 128x
blockingCheckSensor()
blockingSetupSensorFlags()

// setup the serial UART at 9600 baud
SetupSerial(baudRate: 9600)
print(message: Started0)

// this is just a heartbeat so you know it's alive
let indicatorPin = 8
pinMode(pin: indicatorPin, mode: OUTPUT)

// now read the temperature regularly
while(true) {
  digitalWrite(pin: indicatorPin, value: HIGH)
  delay(milliseconds: 100)
  digitalWrite(pin: indicatorPin, value: LOW)
  delay(milliseconds: 100)
  let temp = blockingGetTemperature()
  print(float: temp)
  let alt = blockingGetAltitude()
//  let alt = blockingGetPressure()
  print(float: alt)
}
