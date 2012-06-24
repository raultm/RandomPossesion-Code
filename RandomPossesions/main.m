//
//  main.m
//  RandomPossesions
//
//  Created by Raul Tierno Magro on 17/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRContainer.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for(int i = 0; i < 10; i++){
            BNRItem * p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        BNRContainer *container1 = [[BNRContainer alloc] initWithItemName:@"Container_1" valueInDollars:100 serialNumber:@"C1"];
        
        BNRContainer *container2 = [[BNRContainer alloc] initWithItemName:@"Container_2" valueInDollars:10 serialNumber:@"C2"];
        
        for(int i = 0; i < 2; i++){
            //NSLog(@"Item to add %@", [items objectAtIndex:i]);
            [container2 addItem:[items objectAtIndex:i]]; 
        }
        
        //NSLog(@"%@", container2);
        
        for(int i = 0; i < [items count]; i++){
            //NSLog(@"Item to add %@", [items objectAtIndex:i]);
            [container1 addItem:[items objectAtIndex:i]]; 
        }
        
        [container1 addContainer:container2];
        //NSLog(@"%@", container1);
        
        //Destroy the array pointed to by items
        NSLog(@"Setting items to nil...");
        items = nil;
    }
    return 0;
}

