//------------------------------------------------------------------------------
// Library for Swift For Arduino
// Library for LiquidCrystal
// Knihovna pro LiquidCrystal
//
// Created by Jiří Novak on 12.05.2025.
// Copyright © 2025 Jiří Novak. All rights reserved.
// English
// This library is a rewrite of the original library [LiquidCrystal](https://github.com/arduino-libraries/LiquidCrystal),
// created by the Arduino team, which is licensed under the GNU Lesser General Public License (LGPL) v2.1.
// česky
// Tato knihovna je přepis původní knihovny [LiquidCrystal](https://github.com/arduino-libraries/LiquidCrystal),
// vytvořené týmem Arduino, která je licencována pod GNU Lesser General Public License (LGPL) v2.1.
//
//------------------------------------------------------------------------------

import AVR
typealias IntegerLiteralType = UInt8


// Wiring of variables
// Vss to GND
// Vdd to 5V LCD power supply
// V0 0+5V contrast control
// RS 5V data 0V instruction
// R/W 5V read from LCD 0V write to LCD -> Always connect to GND
// E - pulse signal after instruction or data is written
// D0 - D7 8bit communication
// D4 - D7 4bit communication
// then connect backlight pin15 5V pin16 GND to LCD

// Zapojení proměných
// Vss na GND
// Vdd na 5V napájení LCD
// V0 0+5V řízení kontrastu
// RS 5V data 0V instrukce
// R/W 5V čtení z LCD 0V zapis do LCD -> Vždy budeme zapojovat na GND
// E - impulsní signal po zanesní instrukce nebo dat
// D0 - D7 8bitová komunikace
// D4 - D7 4bitová komunikace
// následně do LCD ještě zapojit podsvícení pin15 5V pin16 GND



// Deklarace proměných
// Declaration of variables

private var rsPin = 0 // pin rozhodnutí instrukce nebo data
private var enable = 0  // pulzační pin pro načtení hodnoty
private var dataPin:[UInt8] = [0,0,0,0,0,0,0,0]  // Datová komunikace s LCD
private var LCDType: UInt8 = 0 // 0 4bitvou komunikace 1 pro 8 bitovou komunikaci
private var Row_Offsets: [UInt8] = [0x00, 0x40, 0x00, 0x40] // matice znaku na lcd
private var NumLines:UInt8 = 0 // řádek
private var displayfunction:UInt8 = 0
private var displaycontrol:UInt8 = 0
private var displaymode:UInt8 = 0
var cols: UInt8 = 0
var rows: UInt8 = 0



// deklaraze konstant
// declaration of constants

// Commands
// Přikazy
private let LCD_CLEARDISPLAY: UInt8 = 0x01
private let LCD_RETURNHOME: UInt8 = 0x02
private let LCD_ENTRYMODESET: UInt8 = 0x04
private let LCD_DISPLAYCONTROL: UInt8 = 0x08
private let LCD_CURSORSHIFT: UInt8 = 0x10
private let LCD_FUNCTIONSET: UInt8 = 0x20
private let LCD_SETCGRAMADDR: UInt8 = 0x40
private let LCD_SETDDRAMADDR: UInt8 = 0x80

// flags for display entry mode
// příznaky pro vstupní režim displeje
private let LCD_ENTRYRIGHT: UInt8 = 0x00
private let LCD_ENTRYLEFT: UInt8 = 0x02
private let LCD_ENTRYSHIFTINCREMENT: UInt8 = 0x01
private let LCD_ENTRYSHIFTDECREMENT: UInt8 = 0x00

// flags for display on/off control
// příznaky pro zapnutí/vypnutí displeje
private let LCD_DISPLAYON: UInt8 = 0x04
private let LCD_DISPLAYOFF: UInt8 = 0x00
private let LCD_CURSORON: UInt8 = 0x02
private let LCD_CURSOROFF: UInt8 = 0x00
private let LCD_BLINKON: UInt8 = 0x01
private let LCD_BLINKOFF: UInt8 = 0x00

// flags for display/cursor shift
// příznaky pro posun displeje/kurzoru
private let LCD_DISPLAYMOVE: UInt8 = 0x08
private let LCD_CURSORMOVE: UInt8 = 0x00
private let LCD_MOVERIGHT: UInt8 = 0x04
private let LCD_MOVELEFT: UInt8 = 0x00

// flags for function set
// příznaky pro sadu funkcí
private let LCD_8BITMODE: UInt8 = 0x10
private let LCD_4BITMODE: UInt8 = 0x00
private let LCD_2LINE: UInt8 = 0x08
private let LCD_1LINE: UInt8 = 0x00
private let LCD_5x10DOTS: UInt8 = 0x04
private let LCD_5x8DOTS: UInt8 = 0x00

// Initialization of LCD
// Inicializace LCD

// initialization of 4bit communication
// inicializace 4bitové komunikace
func InitLCD4bit(RSPIN: UInt8, ENABLE: UInt8, PIN4: UInt8, PIN5: UInt8, PIN6: UInt8, PIN7: UInt8){
    rsPin = RSPIN
    enable = ENABLE
    dataPin[4] = PIN4
    dataPin[5] = PIN5
    dataPin[6] = PIN6
    dataPin[7] = PIN7
    LCDType = 0 // jde o 4bitovou komunikaci
}

// initialization of 8-bit communication
// inicializace 8bitové komunikace
func InitLCD8bit(RSPIN: UInt8, ENABLE: UInt8, PIN0: UInt8, PIN1: UInt8, PIN2: UInt8,PIN3: UInt8, PIN4: UInt8, PIN5: UInt8, PIN6: UInt8, PIN7: UInt8){
    rsPin = RSPIN
    enable = ENABLE
    dataPin[0] = PIN0
    dataPin[1] = PIN1
    dataPin[2] = PIN2
    dataPin[3] = PIN3
    dataPin[4] = PIN4
    dataPin[5] = PIN5
    dataPin[6] = PIN6
    dataPin[7] = PIN7
    LCDType = 1 // jde o 8bitovou komunikaci
}

// Func Start of LCD
// Funkce zapnutí LCD
func begin(_ fcols: UInt8,_ frows: UInt8){
        if LCDType == 0{ //  4bit communication
            displayfunction = LCD_4BITMODE | LCD_1LINE | LCD_5x8DOTS
                // Setting variables for 4-bit communication
                // Nastavení proměných pro 4bitovou komunikaci
                pinMode(pin: rsPin, mode: OUTPUT)
                pinMode(pin: enable, mode: OUTPUT)
                for i in 4...7{
                    pinMode(pin: dataPin[Int(i)],mode: OUTPUT)
                 }

        }else{  // 8bit communication
            displayfunction = LCD_8BITMODE | LCD_1LINE | LCD_5x8DOTS
            // Settings for 8-bit communication
            // Nastavení pro 8bitovou komunikaci
                pinMode(pin: rsPin, mode: OUTPUT)
                pinMode(pin: enable, mode: OUTPUT)
                for i in 0...7{
                    pinMode(pin: dataPin[Int(i)],mode: OUTPUT)
                }
        }
        if frows > 1 {
            displayfunction |= LCD_2LINE
        }
        cols = fcols
        rows = frows
        NumLines = rows
        setRowOffsets(ROW0: 0x00, ROW1: 0x40, ROW2: 0x00 + cols, ROW3: 0x40 + cols)
        delay(us: 50000)
        digitalWrite(pin: rsPin, value: LOW)
        digitalWrite(pin: enable, value: LOW)

        if ((displayfunction & LCD_8BITMODE) == 0) {
            //4-bit LCD activation
            //4bitové aktivování LCD
            write4bits(0x03)
            delay(us: 4500)

            write4bits(0x03)
            delay(us: 4500)

            write4bits(0x03)
            delay(us: 150)

            write4bits(0x02)

        }else{
            //8-bit LCD activation
            //8bitové aktivování LCD
            sendCommand(LCD_FUNCTIONSET | displayfunction)
            delay(us: 4500)

            sendCommand(LCD_FUNCTIONSET | displayfunction)
            delay(us: 150)

            sendCommand(LCD_FUNCTIONSET | displayfunction)
        }

        sendCommand(LCD_FUNCTIONSET | displayfunction)
        displaycontrol = LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF
        onDisplay()
        Clear()
        displaymode = LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT
        sendCommand(LCD_ENTRYMODESET | displaymode)
}


// Higher functions
// Vyšší funkce

// row array setting function
// funkce nastavení pole řádků
func setRowOffsets(ROW0: UInt8, ROW1: UInt8, ROW2: UInt8, ROW3: UInt8){
    Row_Offsets[0] = ROW0
    Row_Offsets[1] = ROW1
    Row_Offsets[2] = ROW2
    Row_Offsets[3] = ROW3
}


// Function for cleaning LCD
// Funkce pro vyčištění LCD
func Clear(){
    sendCommand(LCD_CLEARDISPLAY) //0x01
    delay(milliseconds: 2)
}


// Function to Return Cursor to default position (0,0)
// Funkce pro Návrat Kurzoru na výchozí pozici (0,0)
func Home(){
    sendCommand(LCD_RETURNHOME)  // 0x02
    delay(milliseconds: 2)
}


// Function for sending the cursor to a specific location
// Funkce pro poslání kurzoru na určité místo
func setCursor(_ col: UInt8,_ row: UInt8){
    var move = row
    if move >= NumLines {
        move = NumLines - 1
    }
    let addr = Row_Offsets[Int(move)] + col
    sendCommand(0x80 | addr)
}


// Function for printing text on LCD
// Funkce pro tisk textu na LCD
func LCDprint(_ text: StaticString) {
   for character in text{
       sendData(UInt8(character))
    }
}

// this function make AI
func LCDprintInt(_ number: UInt16) {
    var n = number
    var digitsCount: UInt8 = 0
    var temp = n

    // First, count the number of digits
    repeat {
        digitsCount += 1
        temp = temp / 10
    } while temp > 0

    // Umocňování 10^(digitsCount - 1)
    var divisor: UInt16 = 1
    for _ in 1..<digitsCount {
        divisor *= 10
    }

    // Sequential division and sending digits as characters
    for _ in 0..<digitsCount {
        let digit = n / divisor
        sendData(UInt8(digit) + 48) // ASCII '0' = 48
        n = n % divisor
        divisor = divisor / 10
    }
}

// Shifts the entire LCD one character to the left
// Posunune cely LCD o jeden znak do leva
func scrollDisplayLeft() {
    sendCommand(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVELEFT)
    // sendCommand(0x18)
}


// Shifts the entire LCD one character to the right
// Posunune cely LCD o jeden znak do prava
func scrollDisplayRight() {
    sendCommand(LCD_CURSORSHIFT | LCD_DISPLAYMOVE | LCD_MOVERIGHT)
}


// Function to turn off the LCD
// Funkce pro vypnutí LCD
func offDisplay(){
    displaycontrol &= ~LCD_DISPLAYON
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol)
}

// Function to turn on the LCD
// Funkce pro zapnutí LCD
func onDisplay(){
    displaycontrol |= LCD_DISPLAYON
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol)
}

// Left to right typing function
// Funkce psaní zleva do prava
func LeftToRight(){
    displaymode |= LCD_ENTRYLEFT;
    sendCommand(LCD_ENTRYMODESET | displaymode)
}


// The function of writing backwards from the back of the display
// Funkce psaní pospatku od zadu displaye
func RightToLeft(){
    displaymode &= ~LCD_ENTRYLEFT;
    sendCommand(LCD_ENTRYMODESET | displaymode)
}


// Align text from the cursor to the left
// Zarovnani text od kurzoru zarovna  doleva
func AutoScroll(){
    displaymode |= LCD_ENTRYSHIFTINCREMENT;
    sendCommand(LCD_ENTRYMODESET | displaymode)
}

// Align text from cursor to right
// Zarovnani textu od kurzoru doprava
func noAutoScroll(){
    displaymode &= ~LCD_ENTRYSHIFTINCREMENT;
    sendCommand(LCD_ENTRYMODESET | displaymode)
}


// Cursor activation function
// Funkce zapnutí Kurzoru
func CursorOn() {
    displaycontrol |= LCD_CURSORON;
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol);
}


// Curzor disable function
// Funkce vypnutí Curzoru
func CursorOff() {
    displaycontrol &= ~LCD_CURSORON;
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol)
}

// Cursor blink on function
// Funkce zapnutí blikání Kurzoru
func blinkCursorOn() {
    displaycontrol |= LCD_BLINKON;
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol)
}

// Cursor blink off function
// Funkce vypnutí blikání Kurzoru
func blinkCursorOff() {
    displaycontrol &= ~LCD_BLINKON;
    sendCommand(LCD_DISPLAYCONTROL | displaycontrol)
}

// Creating a custom character
// Vytvoreni vlastniho znaku
func createChar(_ location: UInt8, _ charmap: [UInt8]) {
    let loc = location & 0x07 // pouze 0–7 mužeme vytvořit pouze 8 znaků s ID 0-7
    sendCommand(LCD_SETCGRAMADDR | (loc << 3))
    for i in 0..<8 {
        sendData(charmap[Int(i)])
    }
}

/*

Using this feature
Použití této funkce
let heart: [UInt8] = [
    0b00000,
    0b01010,
    0b11111,
    0b11111,
    0b11111,
    0b01110,
    0b00100,
    0b00000
]

createChar(0, heart)
setCursor(0, 0)
sendData(0) // Vypíše vlastní znak s ID 0 (Prints a custom character with ID 0)

*/

// low-level functions
// nízkoúrovňové funkce

// Poslání příkazu
// send command
func sendCommand(_ Value: UInt8){
    digitalWrite(pin: rsPin,value: LOW)
    sendByte(Value)
    }

// Poslání dat
// send data
func sendData(_ Value: UInt8){
    digitalWrite(pin: rsPin,value: HIGH)
    sendByte(Value)
    }

//
// Sending in bit form with decision about 4bit or 8bit communication
// Zaslání v bitové formě s rozhodnutím o 4bit nebo 8bit komunikaci
func sendByte(_ Value: UInt8){
    if LCDType == 0{
        write4bits((Value >> 4) & 0x0F) // >> jde o bitový posun 4 o kolik bitů dojde k posunu  ,0x0F odstrani 4 vyšší bity ( and 0000 1111)
        write4bits(Value & 0x0F) // 0x0F odstrani 4 vyšší bity ( and 0000 1111)
        }else{
        write8bits(Value) // odešle všech 8bitů najednou
        }
}

// pulsing to retrieve values
// zapulzování pro načtení hodnot
func pulseEnable(){
    digitalWrite(pin: enable, value: LOW)
    delay(us: 10)
    digitalWrite(pin: enable, value: HIGH)
    delay(us: 10)
    digitalWrite(pin: enable, value: LOW)
    delay(us: 100)
}

// the pin setup itself is called to pulse the 4bit version
// samotné nastavení pinů se zavolán zapiulzovaní 4bit verze
func write4bits(_ Value: UInt8){
    for i in 4...7{
        let bit = ((Value >> UInt8((i-4))) & 0x01) == 0 ? LOW : HIGH // >> posun bitů do prava  (i - 4) posun na požadovaný bit a & 0x01 vynulování všech bitů před posledním který chceš znát jako jediný
        digitalWrite(pin: dataPin[Int(i)], value: bit)
    }
    pulseEnable()
}

// the pin setup itself is called to pulse the 8bit version
// samotné nastavení pinů se zavolán zapiulzovaní 8bit verze
func write8bits(_ Value: UInt8){
    for i in 0...7{
        let bit = ((Value >> UInt8(i)) & 0x01) == 0 ? LOW : HIGH
        digitalWrite(pin: dataPin[Int(i)], value: bit)
    }
    pulseEnable()
}











