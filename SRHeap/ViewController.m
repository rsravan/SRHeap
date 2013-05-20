//
//  ViewController.m
//  SRHeap
//
//  Created by SRAVAN on 5/2/13.
//  Copyright (c) 2013 SRAVAN. All rights reserved.
//

#import "ViewController.h"
#import "SRHeap.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *inputArray=[[NSArray alloc] initWithArray:[NSArray arrayWithObjects:[NSNumber numberWithInteger:1], [NSNumber numberWithInteger:2],[NSNumber numberWithInteger:5],[NSNumber numberWithInteger:3],[NSNumber numberWithInteger:19],[NSNumber numberWithInteger:8],[NSNumber numberWithInteger:11],[NSNumber numberWithInteger:10],nil]];
    
    SRHeap *heap=[[SRHeap alloc] init];

    
    
    NSArray *array=[heap heapfromArray:inputArray];
    
    [inputArray release];
    
    [heap release];
    
    NSLog(@"%@",[array description]);
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
