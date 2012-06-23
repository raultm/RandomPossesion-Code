//
//  BNRContainer.m
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer

- (int) valueInDollars{
    int totalValueOfContainer = 0;
    for(int i = 0; i < [items count]; i++){
        totalValueOfContainer+= [[items objectAtIndex:i] valueInDollars];
    }
    totalValueOfContainer+= valueInDollars;
    return totalValueOfContainer;
}

- (NSString *) description{
    NSMutableString *description = [NSMutableString string];
    [description appendString:@"\n Nombre : "];
    [description appendString:itemName];
    [description appendString:@"\n Valor : "];
    [description appendString:[[NSString alloc] initWithFormat:@"%d", [self valueInDollars]]];
    
    BNRItem *item = nil;
    for(int i = 0; i < [items count]; i++){
        [description appendString:@"\n Item : "];
        item = [items objectAtIndex:i];
        [description appendString:[item description]];
    }
    
    return description;
}

- (void) addItem:(BNRItem *)item{
    if (!items) {
        items = [[NSMutableArray alloc] init];
    }
    [items addObject:item];
}

- (void) addContainer:(BNRContainer *)container{
    if (!items) {
        items = [[NSMutableArray alloc] init];
    }
    [items addObject:container];
}

@end
