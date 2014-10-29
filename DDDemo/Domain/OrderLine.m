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

    // Cena standardowa, przed rabatami
    Money *regularCost;

    // Cena po uwzglęnieniu rabatów
    Money *effectiveCost;
}
@end