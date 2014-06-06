//
//  NSArray+CircularList.m
//  Bars
//
//  Created by Sebas on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "NSArray+CircularList.h"

@implementation NSArray (CircularList)

NSInteger pointer=0;

-(id)nextElement {
    
    if(self.count == 0)
    {
        return nil;
    }
    
    if(pointer >= self.count)
    {
        pointer=0;
    }

    id element =[self objectAtIndex:pointer];
    
    pointer++;
    
    
    
    return element;
}


-(id)previousElement {
    
    if(self.count == 0)
    {
        return nil;
    }
    
    id element =[self objectAtIndex:pointer];
    
    pointer--;
    
    if(pointer==0)
    {
        pointer = self.count;
    }
    
    return element;

}


@end
