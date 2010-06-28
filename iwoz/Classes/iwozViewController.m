//
//  iwozViewController.m
//  iwoz
//
//  Created by Matt on 8/11/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  No license due to the fact I'm using a copywritten song (song by Frank Sinatra), and an image of woz

#import "iwozViewController.h"
#include <AudioToolbox/AudioToolbox.h>


@implementation iwozViewController
@synthesize woz;



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
	NSString *path = [[NSBundle mainBundle] pathForResource:@"hbty"	ofType:@"aiff"];
	AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &soundID);
	AudioServicesPlaySystemSound(soundID);
		[self animate];
    [super viewDidLoad];
}




// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
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

-(void)animate
{
	//animation code from http://appsamuck.com/day2.html
	woz.animationImages = [NSArray arrayWithObjects:    
									[UIImage imageNamed:@"happy.png"],
									[UIImage imageNamed:@"happybirthday.png"],
									[UIImage imageNamed:@"hbwoz.png"],
									 nil];
	//duration of whole animation
	woz.animationDuration = 3;
	// repeat the annimation forever
	woz.animationRepeatCount = 0;
	// start animating
	[woz startAnimating];
	// add the animation view to the main window 
	[self.view addSubview:woz];
}
-(IBAction)music //restarts song
{
	AudioServicesPlaySystemSound(soundID);
	//	[self animate]; if you want to restart the animation
	return;
	
}
- (void)dealloc {
    [super dealloc];
}

@end
