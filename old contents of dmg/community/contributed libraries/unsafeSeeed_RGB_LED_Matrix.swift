import Seeed_RGB_LED_Matrix

func ledMatrixShow(number: Int16, durationMs: UInt16, forever: Bool, color: UInt8) {
    Seeed_RGB_LED_Matrix.displayNumber(number, durationMs, forever, color)
}

func ledMatrixShow(bar: UInt8, durationMs: UInt16, forever: Bool, color: UInt8) {
    Seeed_RGB_LED_Matrix.displayBar(bar, durationMs, forever, color)
}

func ledMatrixShow(multiColorBar: UInt8, durationMs: UInt16, forever: Bool) {
    Seeed_RGB_LED_Matrix.displayColorBar(multiColorBar, durationMs, forever)
}

// *			0	smile
// *			1	laugh
// *			2	sad
// *			3	mad
// *			4	angry
// *			5	cry
// *			6	greedy
// *			7	cool
// *			8	shy
// *			9	awkward
//10	heart
// 11	small heart
//12	broken heart
//13	waterdrop
//14	flame
//15	creeper
//16	mad creeper
//17	sword
//18	wooden sword
//19	crystal sword
//20	house
//21	tree
//22	flower
//23	umbrella
//24	rain
//25	monster
//26	crab
//27	duck
//28	rabbit
//29	cat
// *			30  up
//31  down
//32 left
// *			33  right
//34  smile face 3
func ledMatrixShow(emojiNumber: UInt8, durationMs: UInt16, forever: Bool) {
    Seeed_RGB_LED_Matrix.displayEmoji(emojiNumber, durationMs, forever)
}

// NOT a program memory "interned" string, so do not pass a string constant
// from Swift for Arduino, it might compile but it won't work
// use ledMatrixShow(stringConstant: ... to show those types of string on the
// display instead
func ledMatrixShow(stringBuffer: UnsafeMutablePointer<Int8>, durationMs: UInt16, forever: Bool, color: UInt8) {
    Seeed_RGB_LED_Matrix.displayString(stringBuffer, durationMs, forever, color)
}

// Use for string constants from program memory. The type that S4A creates
// automagically when you put a string into your code.
// NOTE: This will destroy any shared string buffer being used.
func ledMatrixShow(stringConstant: Optional<UnsafePointer<Int8>>, durationMs: UInt16, forever: Bool, color: UInt8) {
    Seeed_RGB_LED_Matrix.displayStringConstant(stringConstant, durationMs, forever, color)
}

func ledMatrixShow(colorBlockRGB: UInt32, durationMs: UInt16, forever: Bool) {
    Seeed_RGB_LED_Matrix.displayColorBlock(colorBlockRGB, durationMs, forever)
}

func ledMatrixStopDisplay() {
	Seeed_RGB_LED_Matrix.stopDisplay()
}

func ledMatrixResetDevice() {
	Seeed_RGB_LED_Matrix.resetDevice()
}

/* Snippets:
 {
        "RGB LED Matrix":[
            {"partName":"Show Smiley Face",
                "partCode":"setupI2C(speed: 0x47, premultiplier: 0)\nledMatrixShow(emojiNumber: 0, durationMs: 1800, forever: true)"
            }
        ],

 }

*/
