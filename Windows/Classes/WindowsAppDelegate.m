//
//  WindowsAppDelegate.m
//  Windows
//
//  Created by Matt on 8/18/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "WindowsAppDelegate.h"
#import "WindowsViewController.h"
#define degreesToRadian(x) (M_PI * x / 180.0)

@implementation WindowsAppDelegate

@synthesize window;
@synthesize viewController;

// Override to allow orientations other than the default portrait orientation.

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	UIScreen *screen = [UIScreen mainScreen];
	viewController.view.bounds = CGRectMake(0, 0, screen.bounds.size.height, screen.bounds.size.width);
	viewController.view.transform = CGAffineTransformConcat(viewController.view.transform, CGAffineTransformMakeRotation(degreesToRadian(90)));
	viewController.view.center = window.center;
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
