//
//  Created by Matt on 8/01/09. (egad actually in August!!!)
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */



#import "Mainview.h"
#include <AudioToolbox/AudioToolbox.h>

@implementation Mainview

- (IBAction)playsound {

	int lowCount;
	int iteratorCount;
	// find lowest count
	lowCount = mwArray[1];
	NSString *message;


	for (iteratorCount = 1; iteratorCount <= SOUNDS; iteratorCount++)
	{
		if (mwArray[iteratorCount] < lowCount)
		{
			lowCount = mwArray[iteratorCount];
		}
	}
	
	mwCount = (arc4random() % SOUNDS) + 1;
	while (mwArray[mwCount] != lowCount)
	{
		mwCount = (arc4random() % SOUNDS) + 1;
	}
	mwArray[mwCount]++;
	
	
	
	message = [NSString stringWithFormat: @"mw%i", mwCount];
	
	CFURLRef		soundFileURLRef;
	SystemSoundID	soundFileObject;
	CFBundleRef mainBundle;
	mainBundle = CFBundleGetMainBundle ();
	
	// Get the URL to the sound file to play
	
	
	//ignore the warning, it seems to work fine
	soundFileURLRef  =	CFBundleCopyResourceURL (mainBundle,
												  message,
												 CFSTR ("aiff"),
												 NULL);
	
	// Create a system sound object representing the sound file
	AudioServicesCreateSystemSoundID (soundFileURLRef, &soundFileObject);
	
	AudioServicesPlaySystemSound (soundFileObject);
	
	return;
}

@end
