//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Money : NSObject

@property (nonatomic, copy) NSString *currencyCode;
@property (nonatomic, strong) NSDecimalNumber *amount;


+ (Money *)moneyWithIntegerAmount:(int)price;
@end