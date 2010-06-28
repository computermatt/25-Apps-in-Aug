//
//  speeddialViewController.m
//  speeddial
//
//  Created by Matt on 8/19/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "speeddialViewController.h"

@implementation speeddialViewController
@synthesize phonenumber;
@synthesize label;


-(IBAction)goog411
{
	NSString *telNumber = [NSString stringWithFormat:@"tel:1-800-466-4411"]; 
	[[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:telNumber]];
	[label setText:@"GOOG-411"];

}
-(IBAction)call
{
	NSString *number =  [phonenumber text];
	NSString *telNumber = [NSString stringWithFormat:@"tel:%@", number]; 
	[[UIApplication sharedApplication] openURL:[[NSURL alloc] initWithString:telNumber]];
	[label setText:number];
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
	[label release];
	[phonenumber release];
    [super dealloc];
}

@end
