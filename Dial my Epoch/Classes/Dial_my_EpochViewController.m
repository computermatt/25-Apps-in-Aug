//
//  Dial_my_EpochViewController.m
//  Dial my Epoch
//
//  Created by Matt on 8/21/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "Dial_my_EpochViewController.h"
#include <time.h>

@implementation Dial_my_EpochViewController
@synthesize label;



-(IBAction)dialmyepoch
{
	time_t     now;
	time(&now);
	label.text = [NSString stringWithFormat:@"Calling: %d", now];
	NSString *telNumber = [NSString stringWithFormat:@"tel:%d", now];
	[[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:telNumber]];

}



- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
