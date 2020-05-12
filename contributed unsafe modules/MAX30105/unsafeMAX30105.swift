import MAX30105

func max301Start() -> Bool {
    return particleSensorStart()
}

func max301Setup(
    powerLevel: UInt8,
    sampleAverage: UInt8,
    ledMode: UInt8,
    sampleRate: UInt16,
    pulseWidth: UInt16,
    adcRange: UInt16) {

    particleSensorSetup(
        powerLevel,
        sampleAverage,
        ledMode,
        sampleRate,
        pulseWidth,
        adcRange)
}

func max301AvailableSamples() -> UInt8 {
    return particleSensorAvailable()
}

func max301Red() -> UInt32 {
    return particleSensorGetRed()
}

func max301Green() -> UInt32 {
    return particleSensorGetGreen()
}

func max301IR() -> UInt32 {
    return particleSensorGetIR()
}

func max301GetNextSample() {
    particleSensorNextSample()
}

func max301CheckForSamples() -> UInt16 {
    return particleSensorCheck()
}

func max301SafeCheckForSamples(maxTimeout: UInt8) -> Bool {
    return particleSensorSafeCheck(maxTimeout)
}

func max301CalculateSats(
    IRBuffer: UnsafePointer<UInt16>,
    redBuffer: UnsafePointer<UInt16>,
    bufferLength: Int32,
    SPO2: inout Int32,
    isSPO2Valid spO2Valid: inout Bool,
    HR: inout Int32,
    isHRValid hrValid: inout Bool) {

    var isSPO2Valid: Int8 = 0
    var isHRValid: Int8 = 0

    calculate_sats(
        IRBuffer, bufferLength, redBuffer,
        &SPO2, &isSPO2Valid,
        &HR, &isHRValid)

    spO2Valid = isSPO2Valid == 1
    hrValid = isHRValid == 1
}

/* Snippets:
 {
        "MAX30105 Sensor":[
            {"partName":"Start Bluetooth",
                "partCode":"btStart()\n// factory reset if required...\n//btFactoryReset()"
            },
            {"partName":"Set Bluetooth Device Name",
                "partCode":"btSendCommand(fixedString: \"AT+GAPDEVNAME=S4A Bluetooth Device\")"
            },
            {"partName":"Check Bluetooth Minimum Firmware Version",
                "partCode":"if btCheckMinimumVersion(versionFixedString: \"0.6.6\") {\n  // put commands here that need a newer bluetooth firmware\n}"
            },
            {"partName":"Switch Bluetooth to Data Mode",
                "partCode":"btSetMode(mode: BLUEFRUIT_MODE_DATA)"
            },
            {"partName":"Switch Bluetooth to Command Mode",
                "partCode":"btSetMode(mode: BLUEFRUIT_MODE_COMMAND)"
            },
            {"partName":"Send data over Bluetooth UART",
                "partCode":"stringStartNew()\nstringAddFromProgmem(message: \"Bluetooth over UART is... \")\nstringAddCharacter(79)\nstringAddCharacter(75)\nbtPrint(buffer: stringCurrentValue())"
            },
            {"partName":"Setup Bluetooth HID keyboard and advertise it",
                "partCode":"btSendCommand(fixedString: \"AT+BleKeyboardEn=On\")\nbtReset()\n"
            },
            {"partName":"Send data from Bluetooth HID keyboard",
                "partCode":"stringStartNew()\nstringAddFromProgmem(message: \"AT+BleKeyboard=\")\nstringAddCharacter(79)\nstringAddCharacter(75)\nbtPrint(buffer: stringCurrentValue())\nbtWaitForOK()"
            }
        ]
 }

*/
