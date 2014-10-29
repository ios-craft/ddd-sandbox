//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "Product.h"
#import "Money.h"


@implementation Product {

}
- (instancetype)initWithName:(NSString *)name price:(Money *)price {
    self = [super init];
    if (self) {
        self.name = name;
        self.price = price;
        
        NSLog(@"Hoho %d", price.amount);
    }

    return self;
}

+ (instancetype)productWithName:(NSString *)name price:(Money *)price {
    return [[self alloc] initWithName:name price:price];
}

+ (instancetype)productWithName:(NSString *)name pricePLN:(int)price {
    
    Money *decimalPrice = [Money moneyWithAmount:price];
    return [[self alloc] initWithName:name price:decimalPrice];
}



@end