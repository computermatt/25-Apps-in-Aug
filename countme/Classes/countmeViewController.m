//
//  countmeViewController.m
//  countme
//
//  Created by Matt on 8/13/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "countmeViewController.h"
#include <AudioToolbox/AudioToolbox.h>

@implementation countmeViewController

int counter = 0;

-(void)awakeFromNib {
	
	count.text = @"0";
	
}



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	//DO NOT REMOVE
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"WARNING!" 
						  message:@"THIS APPLICATION IS FOR ENTERTAINMENT PURPOSES ONLY.  THE DEVELOPER OF THIS APPLICATION (25appsinaug) IS NOT RESPONSIBLE FOR ANYTHING YOU DO WITH THIS APPLICATION. "
						  delegate:self 
						  cancelButtonTitle:@"Sir yes sir!" 
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
	//END
	

	
    [super viewDidLoad];
}

-(IBAction)addone 
{
	
	NSString *numValue = [[NSString alloc] initWithFormat:@"%d", counter++];
	count.text = numValue;
	[numValue release];
	if(counter >= 7)
	{
		self.timetoplay;
	}
	else 
	{return;
	}
	
	
}
-(IBAction)subtractone
{
	
	NSString *numValue = [[NSString alloc] initWithFormat:@"%d", counter--];
	count.text = numValue;
	[numValue release];
	
	
}

-(void)timetoplay
{
	count.text = @"DING!";
	AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	self.music;
	self.alert;
	
}
-(void)music
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("beep"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
	
}
-(void)alert
{
	UIAlertView *alert = [[UIAlertView alloc]
						  initWithTitle:@"It's that time!" 
						  message:@"You know what to do now?"
						  delegate:self 
						  cancelButtonTitle:@"Yes" 
						  otherButtonTitles:nil];
	[alert show];
	[alert release];
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
