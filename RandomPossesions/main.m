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
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send the message addObject: to the NSMutableArray pointed to by the variable items, passing a string each time
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex:, to that same array object
        [items insertObject:@"Zero" atIndex:0];
        
        // for every item in the array as determined by sending count to items
        for(int i = 0; i < [items count]; i++){
            // We get the ith object from the array and pass it as an argument to NSLog, which implicitily sends the description message to that object
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        BNRItem *p = [[BNRItem alloc] init];
        
        NSLog(@"%@", p);
        
        
        [p setItemName:@"Red Sofa"];
        
        [p setSerialNumber:@"A1B2C"];
        
        [p setValueInDollars:100];
        
        NSLog(@"%@", p);
        
        //Destroy the array pointed to by items
        items = nil;
    }
    return 0;
}

