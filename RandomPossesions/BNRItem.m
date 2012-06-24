//
//  BNRItem.m
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


+ (id) randomItem{
    //Create an array of three adjectives
    NSArray *randomAdjectiveList = [NSArray arrayWithObjects:@"Fluffy", @"Rusty", @"Shiny", nil];
    
    //Create an array of three noun
    NSArray *randomNounList = [NSArray arrayWithObjects:@"Bear", @"Spork", @"Mac", nil];
    
    //Get the index of a random adjectives/noun from the lists
    //Note: the % operator, called the modulo operator, gives you the reminder. So adjectiveIndex is a random number from 0 to 2 inclusive
    NSInteger adjectiveIndex = rand() % [randomAdjectiveList count];
    NSInteger nounIndex = rand() % [randomNounList count];
    //Note that NSInterger is not an object, but a type definition for "unsigned long"
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", 
                            [randomAdjectiveList objectAtIndex:adjectiveIndex],
                            [randomNounList objectAtIndex:nounIndex]];
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10,
                                    'A' + rand() % 26,
                                    '0' + rand() % 10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName 
                                       valueInDollars:randomValue 
                                         serialNumber:randomSerialNumber];
    return newItem;
}

- (id) init{
    return [self initWithItemName:@"Item" 
                   valueInDollars:0 
                     serialNumber:@""];
}

- (id) initWithItemName:(NSString *)name 
           serialNumber:(NSString *)sNumber
{
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:sNumber];
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

- (void) dealloc{
    NSLog(@"Destroyed: %@", self);
}

@end
