//
//  main.m
//  DDDemo
//
//  Created by Tomek Cejner on 29/10/14.
//  Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductRepository.h"
#import "Product.h"
#import "Money.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");


        Product *prod = [[ProductRepository new] load:0];
        NSLog(@"Price of %@ is %d", prod.name, prod.price.amount);
    }
    return 0;
}
