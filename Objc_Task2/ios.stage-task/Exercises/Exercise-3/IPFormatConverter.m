#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if(numbersArray == nil || numbersArray.count == 0)
    {
        return @"";
    }
    
    for(int i = 0; i< numbersArray.count; i++) {
        NSNumber *val = numbersArray[i];
        if(val.intValue < 0) {
            return @"Negative numbers are not valid for input.";
        }
        
        if(val.intValue > 255) {
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    
    
    NSNumber *val = numbersArray.count > 0 ? numbersArray[0] : @0;
    NSString *res = [NSString stringWithFormat:@"%d", val.intValue];
    for(int i = 1; i< 4; i++) {
        val = numbersArray.count > i ? numbersArray[i] : @0;
        res = [NSString stringWithFormat:@"%@.%d", res, val.intValue];
    }
    return res;
}

@end
