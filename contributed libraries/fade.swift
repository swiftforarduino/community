// Author: Carl Peto
// Date: 12/17/2019
// IDE Version: 3.0
// Description: This gives functions to fade in or out an LED over a number of
// milliseconds. Note, only pins capable of supporting analogWrite can be used,
// e.g. 3,5,6,9,10,11 on an Arduino UNO.

import AVR

/* Snippets:
 {
        "fade":[
            {"partName":"Fade In",
                "partCode":"fadeIn(pin: D3, duration: 300)"
            },
            {"partName":"Fade Out",
                "partCode":"fadeOut(pin: D3, duration: 300)"
            }
        ],
 }

*/

func fadeIn(pin: UInt8, duration: UInt16) {
    if duration < 25 {
        analogWrite(pin: pin, value: 255)
    } else {
        // divide into 25 brightness steps, should be smooth enough
        let brightnessStep = duration / UInt16(50)
        var brightness = 0
        while brightness < 255 {
            brightness = brightness &+ 5
            analogWrite(pin: pin, value: brightness)
            delay(ms: brightnessStep)
            if brightness > 245 {
                brightness = 255
            }
        }
        analogWrite(pin: pin, value: brightness)
    }
}

func fadeOut(pin: UInt8, duration: UInt16) {
    if duration < 25 {
        analogWrite(pin: pin, value: 0)
    } else {
        // divide into 25 brightness steps, should be smooth enough
        let brightnessStep = duration / UInt16(50)
        var brightness = 255
        while brightness > 0 {
            brightness = brightness &- 5
            analogWrite(pin: pin, value: brightness)
            delay(ms: brightnessStep)
            if brightness < 10 {
                brightness = 0
            }
        }
        analogWrite(pin: pin, value: brightness)
    }
}
