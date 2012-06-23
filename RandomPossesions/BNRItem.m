//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


- (id) init{
    return [self initWithItemName:@"Item" 
                   valueInDollars:0 
                     serialNumber:@""];
}

- (id) initWithItemName:(NSString *)name 
         valueInDollars:(int)value 
           serialNumber:(NSString *)sNumber
{
    self =[super init];
    if(self){
        [self setItemName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc] init];
    }
    return self;
}

- (void) setItemName:(NSString *)str
{
    itemName = str;
}
- (NSString *)itemName
{
    return itemName;
}

- (void) setSerialNumber:(NSString *)str
{
    serialNumber = str;
}
- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}
- (int)valueInDollars
{
    return valueInDollars;
}

-(NSDate *)dateCreated
{
    return dateCreated;
}

-(NSString *) description
{
    NSString *descriptionString = 
        [
            [NSString alloc] 
                initWithFormat:@"%@ (%@): Worth $%d, record on %@",
                itemName,
                serialNumber,
                valueInDollars,
                dateCreated
         ];
    return descriptionString;
}

@end
