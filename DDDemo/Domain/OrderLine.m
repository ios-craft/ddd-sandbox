//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "OrderLine.h"
#import "Product.h"
#import "Money.h"


@implementation OrderLine {
    Product *product;
    int quantity;

    NSString *name;

    // Cena standardowa, przed rabatami
    Money *regularCost;

    // Cena po uwzglęnieniu rabatów
    Money *effectiveCost;
}

@synthesize product;

@synthesize quantity;

@synthesize name;

- (instancetype)initWithProduct:(Product *)aProduct quantity:(int)aQuantity regularCost:(Money *)aRegularCost effectiveCost:(Money *)anEffectiveCost {
    self = [super init];
    if (self) {
        product = aProduct;
        quantity = aQuantity;
        regularCost = aRegularCost;
        effectiveCost = anEffectiveCost;
    }

    return self;
}

+ (instancetype)lineWithProduct:(Product *)aProduct quantity:(int)aQuantity regularCost:(Money *)aRegularCost effectiveCost:(Money *)anEffectiveCost {
    return [[self alloc] initWithProduct:aProduct quantity:aQuantity regularCost:aRegularCost effectiveCost:anEffectiveCost];
}

@end