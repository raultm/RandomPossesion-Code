//
//  BNRItem.h
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
    BNRItem *containedItem;
    BNRItem *container;
}

+ (id) randomItem;

- (id) initWithItemName:(NSString *)name
         valueInDollars:(int)value
           serialNumber:(NSString *)sNumber;

- (id) initWithItemName:(NSString *)name
           serialNumber:(NSString *)sNumber;

- (void)setContainedItem:(BNRItem *)i;
- (BNRItem *)containedItem;

- (void)setContainer:(BNRItem *)i;
- (BNRItem *)container;


- (void)setItemName:(NSString *)str;
- (NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)i;
- (int) valueInDollars;

- (NSDate *)dateCreated;



@end
