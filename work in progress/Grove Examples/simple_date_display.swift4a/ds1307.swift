import AVR

let ds1037_address = 0x68

private func convertToBCD(_ value: UInt8) -> UInt8 {
    return ((value / UInt8(10)) << 4) + (value % UInt8(10))
}

private func convertFromBCD(_ value: UInt8) -> UInt8 {
    return (value >> 4) * UInt8(10) + (value & 0x0f)
}

private func clampTo59(_ value: UInt8) -> UInt8 {
    if value > 59 {
        return 59
    } else {
        return value
    }
}

private func clampTo23(_ value: UInt8) -> UInt8 {
    if value > 23 {
        return 23
    } else {
        return value
    }
}

private func clampTo1To12(_ value: UInt8) -> UInt8 {
    if value > 12 {
        return 12
    } else if value < 1 {
        return 1
    } else {
        return value
    }
}

private func clampTo1To31(_ value: UInt8) -> UInt8 {
    if value > 31 {
        return 31
    } else if value < 1 {
        return 1
    } else {
        return value
    }
}

private func clampTo99(_ value: UInt8) -> UInt8 {
    if value > 99 {
        return 99
    } else {
        return value
    }
}

func translateDayOfWeek(_ dayOfWeek: UInt8) -> AVRString {
    switch dayOfWeek {
        case 1:
        return Monday0

        case 2:
        return Tuesday4

        case 3:
        return Wednesday5

        case 4:
        return Thursday6

        case 5:
        return Friday7

        case 6:
        return Saturday8

        case 7:
        return Sunday9

        default:
        return unknown3
    }
}

// hours are in the 24 hour clock
func rtc_setTime(hours: UInt8, minutes: UInt8, seconds: UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: ds1037_address, register: 7, value: 0)

    stringStartNew()
    stringAddCharacter(0) // start at register 0 (seconds)
    stringAddCharacter(convertToBCD(clampTo59(seconds)))
    stringAddCharacter(convertToBCD(clampTo59(minutes)))
    stringAddCharacter(convertToBCD(clampTo23(hours)))
    i2cWriteStringCurrentValueAsBuffer(slaveAddress: ds1037_address)
}

func rtc_getTime(hours: inout UInt8, minutes: inout UInt8, seconds: inout UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: ds1037_address, register: 7, value: 0)

    let hmsBuffer = blockingReadMultipleI2CRegisters(slaveAddress: ds1037_address, registerStart: 0, registerCount: 3)

    seconds = convertFromBCD(UInt8(bitPattern: hmsBuffer[0]))
    minutes = convertFromBCD(UInt8(bitPattern: hmsBuffer[1]))
    hours = convertFromBCD(UInt8(bitPattern: hmsBuffer[2]))
}

// two digit year (starting 20xx)
func rtc_setDayOfWeek(_ dayOfWeek: UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: ds1037_address, register: 3, value: dayOfWeek)
}

func rtc_setDate(dayOfMonth: UInt8, month: UInt8, year: UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: ds1037_address, register: 7, value: 0)

    stringStartNew()
    stringAddCharacter(4) // start at register 4 (date/day of month)
    stringAddCharacter(convertToBCD(clampTo1To31(dayOfMonth)))
    stringAddCharacter(convertToBCD(clampTo1To12(month)))
    stringAddCharacter(convertToBCD(clampTo99(year)))
    i2cWriteStringCurrentValueAsBuffer(slaveAddress: ds1037_address)
}

func rtc_getDate(year: inout UInt8, month: inout UInt8, dayOfMonth: inout UInt8, dayOfWeek: inout UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: ds1037_address, register: 7, value: 0)

    let hmsBuffer = blockingReadMultipleI2CRegisters(slaveAddress: ds1037_address, registerStart: 3, registerCount: 4)

    dayOfWeek = convertFromBCD(UInt8(bitPattern: hmsBuffer[0]))
    dayOfMonth = convertFromBCD(UInt8(bitPattern: hmsBuffer[1]))
    month = convertFromBCD(UInt8(bitPattern: hmsBuffer[2]))
    year = convertFromBCD(UInt8(bitPattern: hmsBuffer[3]))
}
