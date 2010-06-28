//
//  step_counterViewController.m
//  step counter
//
//  Created by Matt  on 8/24/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */


#import "step_counterViewController.h"

@implementation step_counterViewController


@synthesize stepstaken;
NSInteger steps = 0;

// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}


/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[stepstaken setText:@"0"];

	UIAccelerometer *accel = [UIAccelerometer sharedAccelerometer];
	accel.delegate = self;
	accel.updateInterval = kUpdateInterval;
	[super viewDidLoad];
}

/*
-(void)takestep: (UIAccelerometer *)accel didAccelerate:(UIAcceleration *)stepie
{

	NSInteger steps = 0;
	static NSDate *stepstart;
	NSDate *now = [[NSDate alloc] init];
	NSDate *checkDate = [[NSDate alloc] initWithTimeInterval:1.5f
												   sinceDate:stepstart];
	if ([now compare:checkDate] ==
		NSOrderedDescending || stepstart == nil)
	{
		steps = 0;
		[stepstart release];
		stepstart = [[NSDate alloc]init];
	}
	[now release];
	[checkDate release];
	if ( fabsf(stepie.y) > kAccelerationThreshold) {
			steps++;

		NSString *stepcount = [NSString stringWithFormat:@"%d", steps];
		
		[stepstaken setText:stepcount];
	}
		
}
*/
-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
	
	static NSDate *stepstart;
	NSDate *now = [[NSDate alloc] init];
	NSDate *checkDate = [[NSDate alloc] initWithTimeInterval:1.5f sinceDate:stepstart];
	if ([now compare:checkDate] ==
		NSOrderedDescending || stepstart == nil)
	{
		[stepstart release];
		stepstart = [[NSDate alloc]init];
	}
	[now release];
	[checkDate release];
	if ( fabsf(acceleration.y) > kAccelerationThreshold) {
		steps++;
		
		NSString *stepcount = [NSString stringWithFormat:@"%d", steps];
		
		[stepstaken setText:stepcount];
	}
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
-(IBAction)reset
{
	steps = 0;
	[stepstaken setText:@"0"];

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
