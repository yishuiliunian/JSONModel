//
//  NSString+Tools.m
//  JSONModelDemo_iOS
//
//  Created by stonedong on 15/1/24.
//  Copyright (c) 2015年 Underplot ltd. All rights reserved.
//

#import "NSString+Tools.h"

@implementation NSString (Tools)
- (BOOL) isCamelString
{
    if (self.length < 1) {
        return NO;
    }
    for (int i = 0 ; i < self.length; i++) {
        unichar  ch =  [self characterAtIndex:i];
        if (isupper(ch)) {
            return YES;
        }
    }
    return NO;
}

- (NSArray*) sperateByCamel
{
    if (self.length < 1) {
        return nil;
    }
    
    NSMutableArray* array = [NSMutableArray new];
    int lastupIndex = 0;
    for (int i = 1 ; i < self.length; i++) {
        unichar  ch =  [self characterAtIndex:i];
        if (isupper(ch)) {
            [array addObject:[self substringWithRange:NSMakeRange(lastupIndex, i - lastupIndex)]];
            lastupIndex = i;
        }
    }
    if (lastupIndex < self.length -1) {
       [array addObject:[self substringWithRange:NSMakeRange(lastupIndex, self.length - lastupIndex)]];
    }
    return array;
}

- (NSString*) capitalizedFirstCharacterString
{
    if (self.length < 1) {
        return [self copy];
    }
    
    unichar ch = [self characterAtIndex:0];
    return  [self stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[NSString stringWithFormat:@"%c", toupper(ch)]];
}

- (NSString*) lowerFirstCharacterString
{
    if (self.length < 1) {
        return [self copy];
    }
    
    unichar ch = [self characterAtIndex:0];
    return  [self stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[NSString stringWithFormat:@"%c", tolower(ch)]];
}
@end
