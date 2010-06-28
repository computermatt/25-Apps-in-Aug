//
//  tic_tac_toeViewController.h
//  tic-tac-toe
//
//  Created by Matt on 8/4/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
// Used guide here: http://www.iphonedevsdk.com/forum/iphone-sdk-game-development/13001-tic-tac-toe-tutorial-walkthrough.html
// No license is used for this, as it is not a unique creation of mine

#import <UIKit/UIKit.h>

@interface tic_tac_toeViewController : UIViewController {
	IBOutlet UIImage * oImg;
	IBOutlet UIImage * xImg;
	IBOutlet UIImageView *s1;
	IBOutlet UIImageView *s2;
	IBOutlet UIImageView *s3;
	IBOutlet UIImageView *s4;
	IBOutlet UIImageView *s5;
	IBOutlet UIImageView *s6;
	IBOutlet UIImageView *s7;
	IBOutlet UIImageView *s8;
	IBOutlet UIImageView *s9;
	UIImage * theImg;
	IBOutlet UIButton *resetButton; 
	IBOutlet UIImageView * board;
	IBOutlet UILabel * whoseTurn;
	NSInteger playerToken;
	BOOL cellWasUsed;
	NSInteger numberOfPlays;
	UIAlertView *myAlertView;
	
}

@property (nonatomic,retain) UIImage *oImg;
@property (nonatomic,retain) UIImage *xImg;
@property (nonatomic,retain) UIImage *theImg;
@property (nonatomic,retain) UIButton *resetButton;
@property (nonatomic,retain) UIImageView *board;
@property (nonatomic,retain) UIImageView *s1;
@property (nonatomic,retain) UIImageView *s2;
@property (nonatomic,retain) UIImageView *s3;
@property (nonatomic,retain) UIImageView *s4;
@property (nonatomic,retain) UIImageView *s5;
@property (nonatomic,retain) UIImageView *s6;
@property (nonatomic,retain) UIImageView *s7;
@property (nonatomic,retain) UIImageView *s8;
@property (nonatomic,retain) UIImageView *s9;
@property (nonatomic,retain) UIAlertView *myAlertView;
@property (nonatomic,retain) UILabel * whoseTurn;
-(void)processLogic;
-(void) updatePlayerInfo;
-(BOOL) checkForWin;
-(IBAction)buttonReset;
-(void) resetBoard;
@end

