#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    NSMutableArray<NSString *> *stringsArray = [NSMutableArray new];
    NSMutableArray<NSNumber *> *numbersArray = [NSMutableArray new];
    
    for (int i = 0; i < array.count; i++)
    {
        if ([array[i] isKindOfClass: NSArray.class])
        {
            if(array[i].count > 0) {
                if( [array[i][0] isKindOfClass:[NSString class]])
                {
                    [stringsArray addObjectsFromArray:array[i]];
                }
                else {
                    [numbersArray addObjectsFromArray:array[i]];
                }
            }
        }
    }
    
    [stringsArray sortUsingComparator:^NSComparisonResult(id a, id b) {
        NSString *first = (NSString*)a;
        NSString *second = (NSString*)b;
        return [first compare:second];
    }];
    
    [numbersArray sortUsingComparator:^NSComparisonResult(id a, id b) {
        NSNumber *first = (NSNumber*)a;
        NSNumber *second = (NSNumber*)b;
        return [first compare:second];
    }];
    
    if (stringsArray.count == 0)
    {
        return numbersArray;
    }
    else if (numbersArray.count == 0)
    {
        return stringsArray;
    }
    else
    {
        return @[numbersArray, stringsArray];
    }
    
}

@end
