//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "Order.h"
#import "Product.h"
#import "Money.h"
#import "RebatePolicy.h"
#import "OrderLine.h"
#import "OrderedProduct.h"


typedef enum  {
    DRAFT, SUBMITTED, ARCHIVED
} OrderStatus;

@implementation Order {

    Money *totalCost;
    id <RebatePolicy> rebatePolicy;
    OrderStatus orderStatus;
    NSMutableArray *items;  // of type OrderLine

}

- (instancetype)init {
    self = [super init];
    if (self) {
        items = [NSMutableArray array];
    }
    return self;
}


- (void) addProduct:(Product *)product quantity:(int)quantity {
    OrderLine *orderLine = [[OrderLine alloc] initWithProduct:product
                                                     quantity:quantity
                                                  regularCost:[Money zeroPLN]
                                                effectiveCost:[Money zeroPLN]];

    [items addObject:orderLine];

    
}

- (void)applyRebate:(id <RebatePolicy>)rebatePolicy {

}

- (void)setRebatePolicy:(id <RebatePolicy>)policy {

}

- (void)submit {

}

// Should return array of OrderedProduct
- (NSArray *)getOrderedProducts {
    NSMutableArray *result = [NSMutableArray array];
    for (OrderLine *ol in items) {
        OrderedProduct *op = [OrderedProduct productWithName:ol.name
                                                    quantity:ol.quantity
                                                 regularCost:[Money zeroPLN]
                                               effectiveCost:[Money zeroPLN]];
        [result addObject:op];
    }
    return result;
}


@end