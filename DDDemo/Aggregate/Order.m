//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "Order.h"
#import "Product.h"
#import "Money.h"
#import "RebatePolicy.h"

typedef enum  {
    DRAFT, SUBMITTED, ARCHIVED
} OrderStatus;

@implementation Order {

    Money *totalCost;
    id <RebatePolicy> rebatePolicy;
    OrderStatus orderStatus;
    NSMutableArray *items;  // of type OrderLine

}

- (void) addProduct:(Product *)product quantity:(int)quantity {

}

- (void)applyRebate:(id <RebatePolicy>)rebatePolicy {

}

- (void)setRebatePolicy:(id <RebatePolicy>)policy {

}

- (void)submit {

}

// Should return array of OrderedProduct
- (NSArray *)getOrderedProducts {
    return @[];
}


@end