// NOTE: Modifications to the "Libraries:" comment line below will affect the build.
// Libraries:

import AVR
typealias IntegerLiteralType = Pin

let slaveAddress = 0x70

// setup I2C with standard parameters
setupI2C(speed: 0x47, premultiplier: 0)
enableOscillator(slaveAddress: slaveAddress)
turnOnLED(slaveAddress: slaveAddress)

blockingWriteGroveDigital2DigitalValue(slaveAddress: 0x70, value: 29)

//blockingWriteGroveDigital2DigitDisplay(
//    slaveAddress: slaveAddress,
//    letter1: letterFontDataForValue(4),
//    letter2: 0x6144) //0x2144

while(true) {
}
