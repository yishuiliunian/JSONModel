//
//  NSString+Tools.h
//  JSONModelDemo_iOS
//
//  Created by stonedong on 15/1/24.
//  Copyright (c) 2015年 Underplot ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Tools)
- (BOOL) isCamelString;
- (NSString*) capitalizedFirstCharacterString;
- (NSString*) lowerFirstCharacterString;
- (NSArray*) sperateByCamel;
@end
