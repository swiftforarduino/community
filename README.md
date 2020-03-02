# examples
Here are some sample swift files to be used in the Swift for Arduino IDE (http://www.swiftforarduino.com).

##demos
The intention is to demo some examples of how to do things.

traffic-light.swift shows traffic lights, timing and how to handle ints well
*note: it will give an abort warning, but that seems to be because the compiler cannot be sure that you're not doing a divide by zero in the flasher function.  I haven't worked out how to avoid this but it shouldn't be a problem, just use care.*


# Programming the Arduino UNO with Swift For Arduino

This is an introduction to programming a **Arduino UNO** board with the [Swift For Arduino IDE](https://swiftforarduino.com).

In the **Arduino IDE**, programs are structured with two main functions:

```C
void setup(){
    
}

void loop(){
    
}
```

In the **Swift For Arduino IDE** there is no need for the `setup()` function, you just do your initial set-up in the first part of your program, then instead of the `loop()` function you use a `while(true){}` statement with the running program. So a program in Swift For Arduino looks like this:

```swift hl_lines="2 4"
// 0. Libraries
import AVR

// 1. Setup
typealias IntegerLiteralType = Pin
// Do your setup here

// 2. Main Loop
while(true) {
    // Insert code to be run in main loop here.
}
```

Looking at this more closely we see there are three main sections:

### 0. Libraries

You need to import the AVR library. AVR is the type of microcontrollers used in the Arduino UNO board. You can find our more about these [here](https://en.wikipedia.org/wiki/AVR_microcontrollers).

### 1. Setup

Here you'll define variables and helper functions. You have to be careful with types and type inference in Swift For Arduino because of the limitations of working with microcontrollers as opposed to a regular program in Swift.

In particular the standard library runtime is not available. This means many of the main features of Swift on platforms you are used to (Linux, server side swift, macOS, tvOS, iOS, watchOS) are not available, but many would probably not be suited to a small, highly resource constrained embedded device like Arduino Uno.

Also keep in mind that the Arduino UNO has only 2 kB of memory, so please consider this when writing your programs.

For more information on what available or not and some things to look out for, select the help from the menu → `Help/Swift For Arduino Help`. Also check the `AVRPlayground` for a complete view of the API.

### 2. Main Loop

This is where you write the code that will run continuously on the Arduino. As it can run hundreds of times a second, it is usually a good idea to put in some delays in there.

For an example of a program, go on to the first example: [Blink](https://gist.github.com/dricard/dd292bafc2a4c6b0e7a52db951ce7843)
