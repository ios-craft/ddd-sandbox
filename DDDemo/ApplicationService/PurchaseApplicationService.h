//
// Created by Tomek Cejner on 29/10/14.
// Copyright (c) 2014 Tomek. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PurchaseApplicationService : NSObject


- (long)createNewOrder;

- (void)addProduct:(long)productId toOrder:(long)orderId quantity:(int)quantity;

- (void)approveOrder:(long)orderId;
@end