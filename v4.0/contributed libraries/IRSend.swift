// Author: Jinyu Meng
// Date: 04/22/2023
// IDE Version: 5.0
// Description: This lets you send IR signals using basic NEC protocol.

import AVR

// A typical NEC protocol signal should follow this format:
// Start with a leading pulse and space, followed by an 8-bit(LSB) address and its bit inverted version.
// Then an 8-bit(LSB) command and its bit inverted version. Finally, end with a terminator.
// Some devices use all 16-bit to contain data instead of sending3 an inverted correction signal.
//
//       (16 Bursts)
//   Leading Pulse (9ms)            0 (On + Off)                Terminate Burst
// |---------------------|             |---|   |---|                 |---|
// |                     |             |   |   |   |                 |   |
// |                     |             |   |   |   |          ...... |   |
// |                     |             |   |   |   |                 |   |
// |                     |-------------|   |---|   |----------      -|   |
//                        Space (4.5ms)         1 (On + 3 Off)
//                         (8 Bursts)
//

/* Snippets:
 {
        "IRSend":[
        
            {"partName":"Configure IRSend (If you need)",
                "partCode":"configIR(burst: 562, leadingPulse: 16, leadingSpace: 8, zeroSpace: 3)"
            },
            {"partName":"Send IR Signal",
                "partCode":"//The signal should be 11111111 00000000 10110101 01001010\nsendIR(pin: D12, address: 0xFF, command: 0xAD)"
            },
            {"partName":"Send IR Signal with 16-Bit Address",
                "partCode":"//The signal should be 11111111 11111111 10110101 01001010\nsendIRUseFullAddressBits(pin: D12, address: 0xFFFF, command: 0xAD)"
            },
            {"partName":"Send IR Signal with 16-Bit Command",
                "partCode":"//The signal should be 11111111 00000000 10110101 10110101\nsendIRUseFullCommandBits(pin: D12, address: 0xFF, command: 0xADAD)"
            },
            {"partName":"Send IR Signal with 16-Bit Address and Command",
                "partCode":"//The signal should be 11111111 11111111 10110101 10110101\nsendIRUseFullBits(pin: D12, address: 0xFFFF, command: 0xADAD)"
            }
        
        ]
 }
*/

/// The length of a burst. (us)
private var burstLenth: UInt16 = 562
/// The length of the leading pulse. Count by bursts.
private var leadingPulseLenth = 16
/// The length of the space after the leading pulse. Count by bursts.
private var leadingSpaceLenth = 8
/// The length of the space after a pulse which represents a zero. Count by bursts.
private var zeroSpaceLenth = 3

/// If your device uses a unique protocol, you can configure this to adapt accordingly.
/// - Parameters:
///     - burst: The length of a burst. (us)
///     - leadingPulse: The length of the leading pulse. Count by bursts.
///     - leadingPulseSpace: The length of the space after the leading pulse. Count by bursts.
///     - zeroPulseSpace: The length of the space after a pulse that represents a zero. Count by bursts.
func configIR(
    burst: UInt16 = 562,
    leadingPulse: UInt8 = 16,
    leadingSpace: UInt8 = 8,
    zeroSpace: UInt8 = 3
) {
    burstLenth = burst
    leadingPulseLenth = leadingPulse
    leadingSpaceLenth = leadingSpace
    zeroSpaceLenth = zeroSpace
}

/// Send a typical IR signal.
/// - Parameters:
///     - pin: The pin number to which the IR LED is connected.
///     - address: 8-bit address data.
///     - command: 8-bit command data.
func sendIR(pin: UInt8, address: UInt8, command: UInt8) {
    let invertedAddress = address ^ 0xFF
    let fullAddress = (UInt16(invertedAddress) << 8) | UInt16(address)
    let invertedCommand = command ^ 0xFF
    let fullCommand = (UInt16(invertedCommand) << 8) | UInt16(command)
    sendIRUseFullBits(pin: pin, address: fullAddress, command: fullCommand)
}

/// Send an IR signal which uses all address bits.
/// - Parameters:
///     - pin: The pin number to which the IR LED is connected.
///     - address: 16-bit address data.
///     - command: 8-bit command data.
func sendIRUseFullAddressBits(pin: UInt8, address: UInt16, command: UInt8) {
    let invertedCommand = command ^ 0xFF
    let fullCommand = (UInt16(invertedCommand) << 8) | UInt16(command)
    sendIRUseFullBits(pin: pin, address: address, command: fullCommand)
}

/// Send an IR signal which uses all command bits.
/// - Parameters:
///     - pin: The pin number to which the IR LED is connected.
///     - address: 8-bit address data.
///     - command: 16-bit command data.
func sendIRUseFullCommandBits(pin: UInt8, address: UInt8, command: UInt16) {
    let invertedAddress = address ^ 0xFF
    let fullAddress = (UInt16(invertedAddress) << 8) | UInt16(address)
    sendIRUseFullBits(pin: pin, address: fullAddress, command: command)
}

/// Send an IR signal which uses all address and command bits.
/// - Parameters:
///     - pin: The pin number to which the IR LED is connected.
///     - address: 16-bit address data.
///     - command: 16-bit command data.
func sendIRUseFullBits(pin: UInt8, address: UInt16, command: UInt16) {

    // Leading Space
    carrier(pin: pin, us: burstLenth*UInt16(leadingPulseLenth))
    // Leading Delay
    delay(us: burstLenth*UInt16(leadingSpaceLenth))

    // Address Bits
    for i in 0..<address.bitWidth {
        let mask = UInt16(1) << UInt16(i)
        let bit = (address & mask) != 0
        carrier(pin: pin, us: burstLenth)
        if bit {
            delay(us: burstLenth*UInt16(zeroSpaceLenth))
        } else {
            delay(us: burstLenth)
        }
    }

    // Command Bits
    for i in 0..<command.bitWidth {
        let mask = UInt16(1) << UInt16(i)
        let bit = (command & mask) != 0
        carrier(pin: pin, us: burstLenth)
        if bit {
            delay(us: burstLenth*UInt16(zeroSpaceLenth))
        } else {
            delay(us: burstLenth)
        }
    }

    // Terminator
    carrier(pin: pin, us: burstLenth)
}

// 38kHz carrier frequency.
private func carrier(pin: UInt8, us: UInt16) {
    for _ in 0...us/26 {
        delay(us: 10)
        digitalWrite(pin: pin, value: true)
        delay(us: 10)
        digitalWrite(pin: pin, value: false)
    }
    delay(us: us%26)
}
