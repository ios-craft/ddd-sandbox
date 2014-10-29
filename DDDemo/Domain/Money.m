//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "Money.h"
#import "Product.h"


@implementation Money {

}
- (instancetype)initWithAmount:(NSDecimalNumber *)amount {
    self = [super init];
    if (self) {
        self.amount = amount;
        self.currencyCode = @"PLN";
    }

    return self;
}


+ (instancetype)moneyWithAmount:(NSDecimalNumber *)amount {
    return [[self alloc] initWithAmount:amount];
}

+ (instancetype)pln:(int)amountZloty {
    return [self moneyWithAmount:[NSDecimalNumber decimalNumberWithMantissa:amountZloty
                                                                   exponent:0
                                                                 isNegative:NO]];
}

+ (Money *)moneyWithIntegerAmount:(int)price {
    return [self pln:price];

}

- (NSString *)description {
    return [NSString stringWithFormat:@"%.2f %@", self.amount.doubleValue, self.currencyCode];
}



@end