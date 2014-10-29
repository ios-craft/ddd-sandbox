//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GenericRepository : NSObject

- (long)persist:(id)obj;

- (id)retrieve:(long)rowId;
@end