#import "ArrayPrint.h"

@implementation NSArray (RSSchool_Extension_Name)

- (NSString *)print {
    
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 0; i < self.count; i++) {
        id elem = [self objectAtIndex: i];
        if ([elem isKindOfClass: [NSArray class]]) {
            [arr addObject: [elem print]];
        } else if ([elem isKindOfClass: [NSString class]]) {
            [arr addObject: [NSString stringWithFormat:@"\"%@\"", elem]];
        } else if ([elem isKindOfClass: [NSNumber class]]) {
            [arr addObject: [elem stringValue]];
        } else if ([elem isKindOfClass: [NSNull class]]) {
            [arr addObject: @"null"];
        } else {
            [arr addObject: @"unsupported"];
        }
    }
    NSString *result = [NSString stringWithFormat:@"[%@]", [arr componentsJoinedByString:@","]];
    return result;
}

@end
