//
//  google_voiceAppDelegate.m
//  google voice
//
//  Created by Matt  on 8/9/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  

#import "google_voiceAppDelegate.h"
#import "google_voiceViewController.h"

@implementation google_voiceAppDelegate

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
