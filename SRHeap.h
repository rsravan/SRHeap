//
//  SRHeap.h
//  SRHeap
//
//  Created by SRAVAN on 5/10/13.
//  Copyright (c) 2013 SRAVAN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SRHeap : NSObject{
    
    NSMutableArray *heapArray;
}

-(NSArray*)heapfromArray:(NSArray*)inputArray;

@end
