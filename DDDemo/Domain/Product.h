//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Money;


@interface Product : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) Money *price;

- (instancetype)initWithName:(NSString *)name price:(Money *)price;

+ (instancetype)productWithName:(NSString *)name price:(Money *)price;


+ (instancetype)productWithName:(NSString *)name pricePLN:(int)price;
@end