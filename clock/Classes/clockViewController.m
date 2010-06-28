//
//  clockViewController.m
//  clock
//
//  Created by Matt on 8/27/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "clockViewController.h"

@implementation clockViewController

@synthesize hour;
@synthesize min;




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(time) userInfo:nil repeats:YES];	
    [super viewDidLoad];
}




-(void)time
{
	NSDate *now = [NSDate date];
	int hourOfDay = [[now dateWithCalendarFormat:nil timeZone:nil] hourOfDay];
	int minuteOfHour = [[now dateWithCalendarFormat:nil timeZone:nil] minuteOfHour];
	hour.text =[NSString stringWithFormat:@"%d", hourOfDay];
	min.text =[NSString stringWithFormat:@"%d", minuteOfHour];
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
