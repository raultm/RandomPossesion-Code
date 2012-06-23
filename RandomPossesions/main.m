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
        
        for(int i = 0; i < 10; i++){
            BNRItem * p = [BNRItem randomItem];
            [items addObject:p];
        }
        
        for(int i = 0; i <= [items count]; i++){
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        //Destroy the array pointed to by items
        items = nil;
    }
    return 0;
}

