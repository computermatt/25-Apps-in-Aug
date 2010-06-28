//
//  randomizerAppDelegate.m
//  randomizer
//
//  Created by Matt on 8/01/09. (egad actually in August!!!)
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "randomizerAppDelegate.h"

@implementation randomizerAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

	for (mwCount = 1; mwCount <= SOUNDS; mwCount++)
	{
		mwArray[mwCount] = 0;
	}
    mwCount = 1;
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
