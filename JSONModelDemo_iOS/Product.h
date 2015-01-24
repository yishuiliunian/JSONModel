//
//  Product.h
//  JSONModelDemo_iOS
//
//  Created by stonedong on 15/1/24.
//  Copyright (c) 2015年 Underplot ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface Model : JSONModel
@property (copy, nonatomic) NSString* no;
@property (copy, nonatomic) NSString* desc;
@end

@interface Product : JSONModel
@property (copy, nonatomic) NSString* id;
@property (copy, nonatomic) NSString* name;
@property (strong, nonatomic) Model* model;
@end
