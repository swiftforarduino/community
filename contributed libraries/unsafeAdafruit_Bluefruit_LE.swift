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

func btSendCommand(buffer: Optional<UnsafePointer<Int8>>) -> Bool {
	return btsendcommandbuffer(buffer)
}

func btSendCommand(fixedString: Optional<UnsafePointer<Int8>>) -> Bool {
	return btsendcommandfixedstring(fixedString)
}

func btWaitForOK() -> Bool {
	return btwaitforok()
}

/* transmit/receive data */

func btPrint(buffer: Optional<UnsafePointer<Int8>>, appendNewline: Bool = true) {
	btprintbuffer(buffer, appendNewline)
}

func btPrint(fixedString: Optional<UnsafePointer<Int8>>, appendNewline: Bool = true) {
	btprintfixedstring(fixedString, appendNewline)
}

func btAvailable() -> UInt16 {
	return btavailable()
}

func btRead() -> UInt16 {
	return btread()
}

/* GATT services */

// todo