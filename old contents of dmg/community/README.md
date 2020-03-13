# examples
Here are some sample swift files to be used in the Swift for Arduino IDE (http://www.swiftforarduino.com).

##demos
The intention is to demo some examples of how to do things.

traffic-light.swift shows traffic lights, timing and how to handle ints well
*note: it will give an abort warning, but that seems to be because the compiler cannot be sure that you're not doing a divide by zero in the flasher function.  I haven't worked out how to avoid this but it shouldn't be a problem, just use care.*
