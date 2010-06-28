//
//  RSSAppDelegate.m
//  RSS
//
//  Created by Matt on 8/6/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
#import "RSSAppDelegate.h"
#import "RootViewController.h"


@implementation RSSAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

