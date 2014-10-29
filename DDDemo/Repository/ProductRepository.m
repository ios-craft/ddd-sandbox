//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "ProductRepository.h"
#import "Product.h"
#import "Money.h"


@implementation ProductRepository {

    NSArray *products;

}


- (instancetype)init {
    self = [super init];
    if (self) {
        [self fillWithData];
    }

    return self;
}

- (void)fillWithData {
    products = @[
            [Product productWithName:@"Cebula" pricePLN:7],
            [Product productWithName:@"Buraki" pricePLN:6],
            [Product productWithName:@"Szczaw" pricePLN:4],
            [Product productWithName:@"Mirabelki" pricePLN:11]
            // add your own...
        ];
}


- (Product *)load:(long)productId {
    return [products objectAtIndex:productId];
}

@end