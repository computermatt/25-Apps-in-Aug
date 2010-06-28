//
//  RickViewController.m
//  Rick
//
//  Created by Matt on 8/22/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  Thanks to appsamuck for providing the code to use MediaPlayer
//  Apple's documentation and sample code for MediaPlayer sucks (too complicated)
//  This application has no license and is provided as in because I am using a copyrighted video
//  As well as using code provided from somebody else

#import "RickViewController.h"
#import <MediaPlayer/MediaPlayer.h>

 
@implementation RickViewController



-(void)awakeFromNib {
	
	NSBundle *bundle = [NSBundle mainBundle];
	
	NSString *moviePath = [bundle pathForResource:@"video" ofType:@"m4v"];
	
	NSURL *movieURL;
	
	if (moviePath)
	{
		movieURL = [NSURL fileURLWithPath:moviePath];
	}
	
	if (movieURL != nil) {
		moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:movieURL];
		
		// Register to receive a notification when the movie has finished playing. 
		[[NSNotificationCenter defaultCenter] addObserver:self
												 selector:@selector(moviePlayBackDidFinish:) 
													 name:MPMoviePlayerPlaybackDidFinishNotification 
												   object:moviePlayer];
		
		moviePlayer.scalingMode = MPMovieScalingModeAspectFill; 
		moviePlayer.movieControlMode = MPMovieControlModeHidden;
		moviePlayer.backgroundColor = [UIColor blackColor];
		
		[moviePlayer play];
	}
	
}

-(void)moviePlayBackDidFinish: (NSNotification*)notification
{
	moviePlayer = [notification object];
	[moviePlayer play]; //repeat
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


- (void)dealloc {
    [super dealloc];
}

@end
