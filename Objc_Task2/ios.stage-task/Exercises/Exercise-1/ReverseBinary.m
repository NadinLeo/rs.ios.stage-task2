#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 result = 0;
    for (int i = 0; i<8; i++) {
        UInt8 bitValue = n % 2;
        n = n >> 1;
        result = result << 1;
        result = result + bitValue;
    }
    return result;
}
