//
//  mymapAppDelegate.m
//  mymap
//
//  Created by Matt on 8/3/09.


#import "mymapAppDelegate.h"
#import "mymapViewController.h"

@implementation mymapAppDelegate

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
