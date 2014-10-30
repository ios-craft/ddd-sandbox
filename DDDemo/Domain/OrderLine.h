//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;
@class Money;


@interface OrderLine : NSObject

@property(nonatomic, strong) Product *product;
@property(nonatomic) int quantity;

@property(nonatomic, copy) NSString *name;

- (instancetype)initWithProduct:(Product *)aProduct quantity:(int)aQuantity regularCost:(Money *)aRegularCost effectiveCost:(Money *)anEffectiveCost;

+ (instancetype)lineWithProduct:(Product *)aProduct quantity:(int)aQuantity regularCost:(Money *)aRegularCost effectiveCost:(Money *)anEffectiveCost;


@end