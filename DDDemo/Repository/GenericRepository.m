//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import "GenericRepository.h"


@implementation GenericRepository {

    NSMutableArray *storage;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        storage = [NSMutableArray array];
    }

    return self;
}


- (long)persist:(id)obj {
    [storage addObject:obj];
    return storage.count - 1;
}


- (id)retrieve:(long)rowId {
    return [storage objectAtIndex:rowId];
}



@end