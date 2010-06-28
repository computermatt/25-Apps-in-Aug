//
//  istupidViewController.m
//  istupid
//
//  Created by Matt on 8/14/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "istupidViewController.h"
#import "istupidAppDelegate.h"

#include <AudioToolbox/AudioToolbox.h>

@implementation istupidViewController
@synthesize image;



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[self animate];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
-(void)animate
{
	image.animationImages = [NSArray arrayWithObjects:    
						   [UIImage imageNamed:@"one.png"],
						   [UIImage imageNamed:@"two.png"],
						   
						   nil];
	image.animationDuration = .1;
	image.animationRepeatCount = 0;
	[image startAnimating];
	[self.view addSubview:image];
}
-(void)ontap
{
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"ontap" ofType:@"jpg"]];
	[image setImage:img];
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("sound"),
												 CFSTR ("wav"),
												 NULL);
	
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	AudioServicesPlaySystemSound (soundFileObject);
	[self animate];
	return;
	
	
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	NSUInteger tapCount = [touch tapCount];
	
	switch (tapCount) {
		case 1:
			[image stopAnimating];
			[self performSelector:@selector(ontap) withObject:nil afterDelay:.4];

			break;
		case 2:

			break;
		default:
			break;
	}
	
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
