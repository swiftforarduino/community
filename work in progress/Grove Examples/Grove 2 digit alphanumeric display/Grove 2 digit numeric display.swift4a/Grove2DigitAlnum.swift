import AVR

/* derived from https://github.com/Seeed-Studio/Seeed_Alphanumeric_Display_HT16K33 by Jerry Yip with thanks

sample of the font for the 2 letter display unit
    0x4000,                 // '.'
    0x0000,                 //  '/'   display nothing.
    0xa145,                 // '0'
    0x8001,                 // '1'
    0x3107,                 // '2'
    0xb007,                 // '3'
    0x9043,                 // '4'
    0xb046,                 // '5'
    0xb146,                 // '6'
    0x8005,                 // '7'
    0xb147,                 // '8'
    0xb047,                 // '9'
    0x9147,                 // 'A'
    0xb415,                 // 'B'
    0x2144,                 // 'C'
    0xa415,                 // 'D'
    0x3146,                 // 'E'
    0x1146,                 // 'F'
    0xb144,                 // 'G'
    0x9143,                 // 'H'
    0x2414,                 // 'I'
    0xA101,                 // 'J'
    0x0c18,                 // 'K'
    0x2140,                 // 'L'
    0x8169,                 // 'M'
    0x8961,                 // 'N'
    0xa145,                 // 'O'
    0x1147,                 // 'P'
    0xa945,                 // 'Q'
    0x1947,                 // 'R'
    0x2824,                 // 'S'
    0x0414,                 // 'T'
    0xa141,                 // 'U'
    0x8821,                 // 'V'
    0x8b41,                 // 'W'
    0x0a28,                 // 'X'
    0x0428,                 // 'Y'
    0x220c,                 // 'Z'
    0x0000,                 // ilegal num

*/

// only valid for values from 0-9 inclusive, otherwise return the value for .
public func letterFontDataForValue(_ value: UInt8) -> UInt16 {
    switch value {
        case 0:
        return 0xa145
        case 1:
        return 0x8001
        case 2:
        return 0x3107
        case 3:
        return 0xb007
        case 4:
        return 0x9043
        case 5:
        return 0xb046
        case 6:
        return 0xb146
        case 7:
        return 0x8005
        case 8:
        return 0xb147
        case 9:
        return 0xb047
        default:
        return 0x4000
    }
}

public func blockingWriteGroveDigital2DigitDisplay(slaveAddress: UInt8, letter1: UInt16, letter2: UInt16) {
    stringStartNew()
    // register 00 (start writing at display RAM memory address 0)
    stringAddCharacter(0)
    // write 6 bytes, two zero then 2 x 2 for the displays
    stringAddWord(0)
    stringAddWord(letter2)
    stringAddWord(letter1)
    stringAddWord(0)
    stringAddWord(0)
    stringAddWord(0)
    stringAddWord(0)
    stringAddWord(0)

    i2cWriteStringCurrentValueAsBuffer(slaveAddress: slaveAddress)
}

// supported values are 0 to 99
public func blockingWriteGroveDigital2DigitalValue(slaveAddress: UInt8, value: UInt8) {

    let highDigit = value / UInt8(10)
    let lowDigit = value &- highDigit &* UInt8(10)

    blockingWriteGroveDigital2DigitDisplay(
        slaveAddress: slaveAddress,
        letter1: letterFontDataForValue(highDigit),
        letter2: letterFontDataForValue(lowDigit))
}

public func enableOscillator(slaveAddress: UInt8) {
    blockingWriteSingleI2CRegister(slaveAddress: slaveAddress, register: 0x21)
}

public func turnOnLED(slaveAddress: UInt8, blink: Bool = false) {
    if blink {
        blockingWriteSingleI2CRegister(slaveAddress: slaveAddress, register: 0x85)
    } else {
        blockingWriteSingleI2CRegister(slaveAddress: slaveAddress, register: 0x81)
    }
}
