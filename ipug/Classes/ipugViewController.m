//
//  ipugViewController.m
//  ipug
//
//  Created by Matt on 8/5/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//  
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "ipugViewController.h"
#include <AudioToolbox/AudioToolbox.h>


@implementation ipugViewController
@synthesize image;


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
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"sleep" ofType:@"png"]];
	[image setImage:img];
    [super viewDidLoad];
}




// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}
- (void)wakeup 
	 {
		 UIAlertView *alert = [[UIAlertView alloc]
							   initWithTitle:@"Really?" 
							   message:@"Come on man! Why did you have to wake me up!!! Now I can't get back to sleep unless you double tap!"
							   delegate:self 
							   cancelButtonTitle:@"Oh, sorry" 
							   otherButtonTitles:nil];
		 [alert show];
		 [alert release];
		 
		UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"awake" ofType:@"png"]];
	[image setImage:img];
		 
		 CFURLRef		soundFileURLRef;
		 SystemSoundID	soundFileObject;
		 CFBundleRef mainBundle;
		 mainBundle = CFBundleGetMainBundle ();
		 soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
													 CFSTR ("grunt"),
													 CFSTR ("aiff"),
													 NULL);
		 
		 AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
		 AudioServicesPlaySystemSound (soundFileObject);
		 return;
				 
		 
	}
- (void)backtobed
{

	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"That's better!" 
						  message:@"Thank you!! Now I can do what all pugs do, sleep!"
						  delegate:self 
						  cancelButtonTitle:@"You're Welcome" 
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
		 
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"sleep" ofType:@"png"]];
	[image setImage:img];
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
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	NSUInteger tapCount = [touch tapCount];
	
	switch (tapCount) {
		case 1:
			[self performSelector:@selector(wakeup) withObject:nil afterDelay:.4];

			//[self wakeup];
			break;
		case 2:
			[NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(wakeup) object:nil];
			[self performSelector:@selector(backtobed) withObject:nil afterDelay:.4];

			//[self backtobed];
			break;
		default:
			break;
	}
	
}


@end
