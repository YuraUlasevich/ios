#import "FullBinaryTrees.h"
// good luck
@implementation FullBinaryTrees

- (NSString *)stringForNodeCount:(NSInteger)count {
    if(count % 2 == 0) {
        return @"[]";
    }
    else if(count == 1) {
        return @"[[0]]";
    }
    NSInteger hole = (count - 3) / 2;
    NSInteger max= hole;
    NSMutableArray *combin = [NSMutableArray arrayWithCapacity:max + 1];
    [combin insertObject:@(1) atIndex:0];
    for(int i = 1; i < max; i++)
    {
        NSInteger fact = 1;
        for(int j = 1; j <= hole; j++) {
            fact *= j;
        }
        if(i == 1) {
            [combin insertObject:@(fact + 1) atIndex:i];
        }
        else {
            [combin insertObject:@(fact + 1 - i)atIndex:i];
        }
    }
    [combin insertObject:@(1) atIndex:max];
    NSMutableArray *holes = [NSMutableArray new];
    for(int i = 3, j = 0; i < count; i+=2, j++) {
        [holes insertObject: @(i) atIndex:j];
    }
    for(int i = 0; i < [combin count]; i++) {
        
        NSMutableString *one = @"[0,0,0";
        
        for(int i1 = 0; i1 < count - 3; i1++) {
            [one insertString:@",0" atIndex:[one length] - 1];
        }
        for(int j = 0; j + i <= hole; j++) {
            
        }
    }
    return @"";
}
@end
