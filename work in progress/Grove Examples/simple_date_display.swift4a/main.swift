import AVR
typealias IntegerLiteralType = Pin

let slaveAddress = 0x70

// setup I2C with standard parameters
setupI2C(speed: 0x47, premultiplier: 0)

var dayOfWeek: UInt8 = 0
var dayOfMonth: UInt8 = 0
var month: UInt8 = 0
var year: UInt8 = 0

while(true) {
    // read time
    rtc_getDate(year: &year, month: &month, dayOfMonth: &dayOfMonth, dayOfWeek: &dayOfWeek)

    // turn on display
    enableOscillator(slaveAddress: slaveAddress)
    turnOnLED(slaveAddress: slaveAddress)

    // display time
    blockingWriteGroveDigital2DigitalValue(slaveAddress: slaveAddress, value: dayOfMonth)

    // wait 10 seconds
    delay(ms: 10_000)

    // turn off the display (disable oscillator, etc.)
    turnOffLED(slaveAddress: slaveAddress)
    disableOscillator(slaveAddress: slaveAddress)

    // put the MCU to sleep, awaiting button interrupt
    sleepCpuUntilPin2Trigger(edgeType: RISING_EDGE)
}
