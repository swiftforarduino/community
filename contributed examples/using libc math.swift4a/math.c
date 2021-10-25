//#import <math.h>
// due to a bug in the AVR back end, including math.h actually breaks the build for log and exponent functions
// note this hack *only* works on one-in one-out type functions like this YMMV

float _log(float f) {
    return log(f);
}

float _sin(float theta) {
    return sin(theta);
}

