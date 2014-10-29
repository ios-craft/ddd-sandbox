//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Product;


@interface ProductRepository : NSObject


- (Product *)load:(long)productId;
@end