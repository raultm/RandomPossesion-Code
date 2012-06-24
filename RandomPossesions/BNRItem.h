//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
+ (id) randomItem;

- (id) initWithItemName:(NSString *)name
         valueInDollars:(int)value
           serialNumber:(NSString *)sNumber;

- (id) initWithItemName:(NSString *)name
           serialNumber:(NSString *)sNumber;

@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;
@property (nonatomic, strong) NSString *itemName;
@property (nonatomic, strong) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;

@end
