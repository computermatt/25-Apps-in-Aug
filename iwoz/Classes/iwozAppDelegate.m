//
//  iwozAppDelegate.m
//  iwoz
//
//  Created by Matt on 8/11/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  No license due to the fact I'm using a copywritten song (song by Frank Sinatra), and an image of woz

#import "iwozAppDelegate.h"
#import "iwozViewController.h"

@implementation iwozAppDelegate

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
