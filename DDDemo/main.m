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



        ProductRepository *repository = [ProductRepository new];
        for (int j=0; j<4; j++) {
            Product *prod = [repository load:j];
            NSLog(@"ID:%d Price of %@ is %@", j+1, prod.name, prod.price.amount);
        }

    }
    return 0;
}
