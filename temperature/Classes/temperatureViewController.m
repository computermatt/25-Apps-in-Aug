//
//  temperatureViewController.m
//  temperature
//
//  Created by Matt on 8/20/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "temperatureViewController.h"

@implementation temperatureViewController

@synthesize temp;
@synthesize final;
@synthesize deg;

-(IBAction)fartocel
{
	NSString *tocel = [temp text];
	double c = (5.0/9.0)*([tocel doubleValue]-32.0);
	final.text = [[NSString alloc]initWithFormat:@"%2.0f", c];
	[deg setText:@"˚C"];
}

-(IBAction)celtofar
{
	NSString *tofar = [temp text];
	double f = (9.0/5.0*[tofar doubleValue])+32.0;
	final.text = [[NSString alloc]initWithFormat:@"%2.0f", f];
	[deg setText:@"˚F"];


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
