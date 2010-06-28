//
//  tic_tac_toeAppDelegate.m
//  tic-tac-toe
//
//  Created by Matt on 8/4/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
// Used guide here: http://www.iphonedevsdk.com/forum/iphone-sdk-game-development/13001-tic-tac-toe-tutorial-walkthrough.html
// No license is used for this, as it is not a unique creation of mine

#import "tic_tac_toeAppDelegate.h"
#import "tic_tac_toeViewController.h"

@implementation tic_tac_toeAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
