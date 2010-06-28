//
//  digg_counterViewController.m
//  digg counter
//
//  Created by Matt on 8/25/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//	Code comes as is due to the use of the digg button image

#import "digg_counterViewController.h"

@implementation digg_counterViewController
@synthesize diggs;

int digg = 1;

- (void)viewDidLoad {
	[diggs setText:@"0"];
    [super viewDidLoad];
}

-(IBAction)diggit
{
	[diggs setText:@"dugg"];
	timer = [NSTimer scheduledTimerWithTimeInterval:(2) 
											 target:self
											 selector:@selector(plusdigg)
											 userInfo:nil 
											 repeats:NO];

}
-(void)plusdigg
{
	NSString *diggnumber = [[NSString alloc] initWithFormat:@"%d", digg++];
	[diggs setText:diggnumber];

	return;
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
