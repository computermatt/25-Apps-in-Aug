//
//  digg_counterAppDelegate.m
//  digg counter
//
//  Created by Matt on 8/25/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//	Code comes as is due to the use of the digg button image

#import "digg_counterAppDelegate.h"
#import "digg_counterViewController.h"

@implementation digg_counterAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
