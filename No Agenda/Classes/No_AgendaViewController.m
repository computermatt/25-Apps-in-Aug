//
//  No_AgendaViewController.m
//  No Agenda
//
//  Created by Matt on 7/30/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "No_AgendaViewController.h"
#include <AudioToolbox/AudioToolbox.h>

@implementation No_AgendaViewController


-(IBAction)monsanto
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("monsanto"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}
-(IBAction)oxley
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("oxley"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}
-(IBAction)johnsays
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("johnsays"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}

-(IBAction)news
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("News"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}
-(IBAction)lookatthat
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("lookatthat"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}
-(IBAction)morning
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("morning"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}
-(IBAction)listentous
{
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												 CFSTR ("listentous"),
												 CFSTR ("aif"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
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
