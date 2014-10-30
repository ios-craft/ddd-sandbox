//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;
@protocol RebatePolicy;


@interface Order : NSObject


- (void)addProduct:(Product *)product quantity:(int)quantity;

- (void)applyRebate:(id <RebatePolicy>)rebatePolicy;

- (void)setRebatePolicy:(id <RebatePolicy>)policy;

- (void)submit;

- (NSArray *)getOrderedProducts;
@end