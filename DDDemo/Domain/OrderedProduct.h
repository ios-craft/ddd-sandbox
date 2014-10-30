//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Money;


@interface OrderedProduct : NSObject

// ID, Name, quantity, effectiveCost, regularCost

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int quantity;
@property (nonatomic, strong) Money *regularCost;
@property (nonatomic, strong) Money *effectiveCost;

- (instancetype)initWithName:(NSString *)name quantity:(int)quantity regularCost:(Money *)regularCost effectiveCost:(Money *)effectiveCost;

+ (instancetype)productWithName:(NSString *)name quantity:(int)quantity regularCost:(Money *)regularCost effectiveCost:(Money *)effectiveCost;


@end