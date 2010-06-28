//
//  RickAppDelegate.m
//  Rick
//
//  Created by Matt on 8/22/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  Thanks to appsamuck for providing the code to use MediaPlayer
//  Apple's documentation and sample code for MediaPlayer sucks (too complicated)
//  This application has no license and is provided as in because I am using a copyrighted video
//  As well as using code provided from somebody else

#import "RickAppDelegate.h"
#import "RickViewController.h"

@implementation RickAppDelegate

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
