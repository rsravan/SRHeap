//
//  SRHeap.m
//  SRHeap
//
//  Created by SRAVAN on 5/10/13.
//  Copyright (c) 2013 SRAVAN. All rights reserved.
//

#import "SRHeap.h"

@implementation SRHeap


-(NSArray*)heapfromArray:(NSArray *)inputArray{

    heapArray=[[NSMutableArray alloc] initWithArray:inputArray];
    
    [self buildHeap];
    
    return [heapArray autorelease];
    
}


-(NSInteger)getParent:(NSInteger)i{
    
    return ceil(i/2);
    
}


-(NSInteger)getLeftChild:(NSInteger)i{
    
    return (2*i+1);
    
}

-(NSInteger)getRightChild:(NSInteger)i{
    
    return (2*i+2);
    
}


-(NSArray*)heapifyforIndex:(NSInteger)index{
    
    int heap_size=heapArray.count;
    
    NSInteger leftIndex=[self getLeftChild:index];
    
    NSInteger rightIndex=[self getRightChild:index];
    
    NSInteger largestIndex=index;
    
    NSInteger parentvalue=[[heapArray objectAtIndex:index] integerValue];
    
    NSInteger largestValue=parentvalue;
    
    
    if (leftIndex<heap_size) {
        NSInteger leftValue=[[heapArray objectAtIndex:leftIndex] integerValue];
        if (leftValue>parentvalue) {
            largestValue=leftValue;
            largestIndex=leftIndex;
        }
        
    }
    
    if (rightIndex<heap_size) {
        NSInteger rightValue=[[heapArray objectAtIndex:rightIndex] integerValue];
        if (rightValue>largestValue) {
            largestIndex=rightIndex;

        }
    }
    
    //swap if largest index is not the parent and hepaify
    
    if (largestIndex!=index) {
       
        [heapArray exchangeObjectAtIndex:largestIndex withObjectAtIndex:index];
        
        [self heapifyforIndex:largestIndex];
    }
       
    return heapArray;
    
    
}

-(void)buildHeap{
    
    int heap_size=heapArray.count;
    
    for (int i=floor((float)((heap_size)/2)); i>=0; i--) {
        
        [self heapifyforIndex:i];
    }
}

- (void)dealloc
{
    [super dealloc];
}






@end
