//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Money;
@class Product;

@protocol RebatePolicy <NSObject>
- (Money *) calculateRebateFor:(Product*)product quantity:(int)quantity withRegularPrice:(Money *)regularPrice;
@end