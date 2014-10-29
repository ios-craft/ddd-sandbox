//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "Money.h"


@implementation Money {

}
- (instancetype)initWithAmount:(int)amount {
    self = [super init];
    if (self) {
        self.amount = amount;
        self.currencyCode = @"PLN";
    }

    return self;
}

+ (instancetype)moneyWithAmount:(int)amount {
    return [[self alloc] initWithAmount:amount];
}


@end