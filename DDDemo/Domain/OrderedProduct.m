//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "OrderedProduct.h"
#import "Money.h"


@implementation OrderedProduct {

}
- (instancetype)initWithName:(NSString *)name quantity:(int)quantity regularCost:(Money *)regularCost effectiveCost:(Money *)effectiveCost {
    self = [super init];
    if (self) {
        self.name = name;
        self.quantity = quantity;
        self.regularCost = regularCost;
        self.effectiveCost = effectiveCost;
    }

    return self;
}

+ (instancetype)productWithName:(NSString *)name quantity:(int)quantity regularCost:(Money *)regularCost effectiveCost:(Money *)effectiveCost {
    return [[self alloc] initWithName:name quantity:quantity regularCost:regularCost effectiveCost:effectiveCost];
}

@end