//
//  Tests.m
//  Tests
//
//  Created by Tomek Cejner on 29/10/14.
//  Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Order.h"
#import "Product.h"
#import "Money.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)testDummy {
    XCTAssert(YES, @"Pass");
}

- (void)testShould_Add_One_Product_To_Order {

    Order *order = [Order new];

    [order addProduct:[Product productWithName:@"testProduct" price:[Money zeroPLN]] quantity:1];

    NSArray *ordered = [order getOrderedProducts];

    XCTAssertEqual(ordered.count, 1);
    
}



@end
