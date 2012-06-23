//
//  main.m
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        BNRItem *p = [[BNRItem alloc] initWithItemName:@"Red Sofa" 
                                        valueInDollars:100 
                                          serialNumber:@"A1B2C"];
        NSLog(@"%@", p);
        
        //Destroy the array pointed to by items
        items = nil;
    }
    return 0;
}

