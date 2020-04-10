import Adafruit_Bluefruit_LE

/* setup */
func btStart() -> Bool {
	return btstart()
}

func btReset() -> Bool {
	return btreset()
}

func btSetEcho(on: Bool) {
	return btecho(_Bool on)
}

func btCheckMinimumVersion(version: AVRString) -> Bool {
	return btcheckminimumversion(const char * version)
}

func btFactoryReset() -> Bool {
	return btfactoryreset()
}

/* change/check status/connection */

func btIsConnected() -> Bool {
	return btisconnected()
}

func btSetMode(mode: UInt8) -> Bool {
	return btsetmode(uint8_t new_mode)
}

/* commands */

func btSendCommand(buffer: AVRString) -> Bool {
	return btsendcommandbuffer(const char * cmd)
}

func btSendCommand(fixedString: AVRString) -> Bool {
	return btsendcommandfixedstring(const char * cmd)
}

func btWaitForOK() -> Bool {
	return btwaitforok()
}

/* transmit/receive data */

func btPrint(buffer: AVRString, appendNewline: Bool = true) {
	void btprintbuffer(buffer, appendNewline)
}

func btPrint(fixedString: AVRString, appendNewline: Bool = true) {
	void btprintfixedstring(fixedString, appendNewline)
}

func btAvailable() -> UInt16 {
	return btavailable()
}

func btRead() -> UInt16 {
	return btread()
}

/* GATT services */

// todo