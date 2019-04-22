//
//  Arr.m
//  RSSchool_T4
//
//  Created by Юра Уласевич on 4/22/19.
//  Copyright © 2019 iOSLab. All rights reserved.
//

#import "Arr.h"

@implementation NSString (OnlyDigits)
- (NSString*)rk_cleared{
    NSArray* array = [self componentsSeparatedByCharactersInSet:[NSCharacterSet decimalDigitCharacterSet].invertedSet];
    NSString* answer = [array componentsJoinedByString:@""];
    return answer;
}
@end
