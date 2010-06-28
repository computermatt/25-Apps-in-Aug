//
//  iwozViewController.h
//  iwoz
//
//  Created by Matt on 8/11/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  No license due to the fact I'm using a copywritten song (song by Frank Sinatra), and an image of woz

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
@interface iwozViewController : UIViewController {
	IBOutlet UIImageView *woz;
	SystemSoundID soundID;

}
@property (nonatomic, retain) UIImageView *woz;
-(void)animate;
-(IBAction)music;
@end

