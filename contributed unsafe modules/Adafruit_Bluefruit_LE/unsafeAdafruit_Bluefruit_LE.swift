import Adafruit_Bluefruit_LE

/* setup */
func btStart() -> Bool {
	return btstart()
}

func btReset() -> Bool {
	return btreset()
}

func btSetEcho(on: Bool) -> Bool {
	return btecho(on)
}

func btCheckMinimumVersion(version: Optional<UnsafePointer<Int8>>) -> Bool {
	return btcheckminimumversion(version)
}

func btFactoryReset() -> Bool {
	return btfactoryreset()
}

/* change/check status/connection */

func btIsConnected() -> Bool {
	return btisconnected()
}

func btSetMode(mode: UInt8) -> Bool {
	return btsetmode(mode)
}

/* commands */
// note: use this variant if you are constructing a command from multiple parts
// using the stringStartNew, stringAddFromProgmem, stringCurrentValue, etc.
func btSendCommand(buffer: Optional<UnsafePointer<Int8>>) -> Bool {
	return btsendcommandbuffer(buffer)
}

// note: use this variant for fixed commands that are unchanging and can be
// automatically put into flash memory
func btSendCommand(fixedString: Optional<UnsafePointer<Int8>>) -> Bool {
	return btsendcommandfixedstring(fixedString)
}

func btWaitForOK() -> Bool {
	return btwaitforok()
}

/* transmit/receive data */
// note: use this variant if you are constructing a message from multiple parts
// using the stringStartNew, stringAddFromProgmem, stringCurrentValue, etc.
func btPrint(buffer: Optional<UnsafePointer<Int8>>, appendNewline: Bool = true) {
	btprintbuffer(buffer, appendNewline)
}

// note: use this variant for fixed messages that are unchanging and can be
// automatically put into flash memory
func btPrint(fixedString: Optional<UnsafePointer<Int8>>, appendNewline: Bool = true) {
	btprintfixedstring(fixedString, appendNewline)
}

func btAvailable() -> UInt16 {
	return btavailable()
}

func btRead() -> UInt16 {
	return btread()
}

/* Snippets:
 {
        "Adafruit Bluefruit":[
            {"partName":"Start Bluetooth",
                "partCode":"btStart()\n// factory reset if required...\n//btFactoryReset()"
            },
            {"partName":"Set Bluetooth Device Name",
                "partCode":"btSendCommand(fixedString: \"AT+GAPDEVNAME=S4A Bluetooth Device\")"
            },
            {"partName":"Check Bluetooth Minimum Firmware Version",
                "partCode":"stringStartNew()\nstringAddFromProgmem(message: \"0.6.6\")\nif btCheckMinimumVersion(version: stringCurrentValue()) {\n  // put commands here that need a newish bluetooth firmware\n}"
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
                "partCode":"btSendCommand(fixedString: \"AT+BleKeyboardEn=On\")"
            },
            {"partName":"Send data from Bluetooth HID keyboard",
                "partCode":"stringStartNew()\nstringAddFromProgmem(message: \"AT+BleKeyboard=\")\nstringAddCharacter(79)\nstringAddCharacter(75)\nbtPrint(buffer: stringCurrentValue())\nbtWaitForOK()"
            }
        ]
 }

*/

/* GATT services */

// todo