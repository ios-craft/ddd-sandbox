//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "OrderRepository.h"
#import "Order.h"


@implementation OrderRepository {



}

- (long)save:(Order *)order {
    return [super persist:order];
}

- (Order*)load:(long)rowId {
    return [super retrieve:rowId];
}

@end