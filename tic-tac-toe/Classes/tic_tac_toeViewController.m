//
//  tic_tac_toeViewController.m
//  tic-tac-toe
//
//  Created by Matt on 8/4/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
// Used guide here: http://www.iphonedevsdk.com/forum/iphone-sdk-game-development/13001-tic-tac-toe-tutorial-walkthrough.html
// No license is used for this, as it is not a unique creation of mine

#import "tic_tac_toeViewController.h"

@implementation tic_tac_toeViewController

@synthesize s1,s2,s3,s4,s5,s6,s7,s8,s9;
@synthesize oImg,xImg,theImg,whoseTurn,board;
@synthesize resetButton, myAlertView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    }
    return self;
}

- (void)viewDidLoad {
	oImg = [UIImage imageNamed:@"O.png"];
	xImg = [UIImage imageNamed:@"X.png"];
	
	playerToken = 1;
	whoseTurn.text =@"X can go";
	
	numberOfPlays = 0;
	
	
    [super viewDidLoad];
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	
	
	switch (playerToken){
		case 1:
			theImg = xImg;
			break;
		case 2:
			theImg = oImg;
			break;
	}
	
	UITouch *touch = [[event allTouches] anyObject];
	cellWasUsed = NO;
	
    if(CGRectContainsPoint([s1 frame], [touch locationInView:self.view]) & (s1.image == NULL)){
		cellWasUsed = YES;
		s1.image = theImg;
	}
    if(CGRectContainsPoint([s2 frame], [touch locationInView:self.view]) & (s2.image == NULL)){
		cellWasUsed = YES;
		s2.image = theImg;
	}
	if(CGRectContainsPoint([s3 frame], [touch locationInView:self.view]) & (s3.image == NULL)){
		cellWasUsed = YES;
		s3.image = theImg;
	}
	if(CGRectContainsPoint([s4 frame], [touch locationInView:self.view]) & (s4.image == NULL)){
		cellWasUsed = YES;
		s4.image = theImg;
	}
	if(CGRectContainsPoint([s5 frame], [touch locationInView:self.view]) & (s5.image == NULL)){
		cellWasUsed = YES;
		s5.image = theImg;
	}
	if(CGRectContainsPoint([s6 frame], [touch locationInView:self.view]) & (s6.image == NULL)){
		cellWasUsed = YES;
		s6.image = theImg;
	}
	if(CGRectContainsPoint([s7 frame], [touch locationInView:self.view]) & (s7.image == NULL)){
		cellWasUsed = YES;
		s7.image = theImg;
	}
	if(CGRectContainsPoint([s8 frame], [touch locationInView:self.view]) & (s8.image == NULL)){
		cellWasUsed = YES;
		s8.image = theImg;
	}
	if(CGRectContainsPoint([s9 frame], [touch locationInView:self.view]) & (s9.image == NULL)){
		cellWasUsed = YES;
		s9.image = theImg;
	}
	[self processLogic];
	
	if (cellWasUsed){
		[self updatePlayerInfo];
    }
	
    
	
	
}

-(void)processLogic{
	    if([self checkForWin]){
		if(playerToken==1){
			myAlertView = [[UIAlertView alloc] initWithTitle:@"Winner!" message:@"Player X wins!" delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[myAlertView show];
			
			[self resetBoard];
		}else if(playerToken==2){
			myAlertView = [[UIAlertView alloc] initWithTitle:@"Winner!" message:@"Player O wins!" delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[myAlertView show];
			
			[self resetBoard];
		}
		
		if(numberOfPlays == 9){
			myAlertView = [[UIAlertView alloc] initWithTitle:@"No Winner" message:@"Sorry, cats game." delegate:self cancelButtonTitle:@"Ok." otherButtonTitles:nil];
			[myAlertView show];
			
			[self resetBoard];
		}
	}
}



-(BOOL) checkForWin{
	
	
	if((s1.image == s2.image) & (s2.image == s3.image) & (s1.image != NULL)) { return YES; }	if((s4.image == s5.image) & (s5.image == s6.image) & (s4.image != NULL)) { return YES; }
	if((s7.image == s8.image) & (s8.image == s9.image) & (s7.image != NULL)) { return YES; }
	
	if((s1.image == s4.image) & (s4.image == s7.image) & (s1.image != NULL)) { return YES; }
	if((s2.image == s5.image) & (s5.image == s8.image) & (s2.image != NULL)) { return YES; }
	if((s3.image == s6.image) & (s6.image == s9.image) & (s3.image != NULL)) { return YES; }	
	
	if((s1.image == s5.image) & (s5.image == s9.image) & (s1.image != NULL)) { return YES; }
	if((s3.image == s5.image) & (s5.image == s7.image) & (s3.image != NULL)) { return YES; }
	

	return NO;
}

-(void)displayWinner{
	if([self checkForWin] == YES){
		if(playerToken==1){
			whoseTurn.text =@"X is the WINNER";
        } else {
			whoseTurn.text =@"O is the WINNER";
		}
	}
	
}

-(IBAction) buttonReset{
	[self resetBoard];
	
}


-(void) resetBoard{
	
	s1.image = NULL;
	s2.image = NULL;
	s3.image = NULL;
	s4.image = NULL;
	s5.image = NULL;
	s6.image = NULL;
	s7.image = NULL;
	s8.image = NULL;
	s9.image = NULL;
	
	playerToken= 1;
	whoseTurn.text = @"X can go";
	
	numberOfPlays = 0;
	
	
}

- (void) updatePlayerInfo{
	
		
	numberOfPlays++;
	if(numberOfPlays == 9){
		[self resetBoard];
	}
	
	
	if(playerToken == 1){
		playerToken = 2; 
		whoseTurn.text = @"O can go"; 		
	} else {
		playerToken = 1;
		whoseTurn.text =@"X can go";
		
	}
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; 
}


- (void)dealloc {
	[s1 release];
	[s2 release];
	[s3 release];
	[s4 release];
	[s5 release];
	[s6 release];
	[s7 release];
	[s8 release];
	[s9 release];
	[theImg release];
	[resetButton release];
	[board release];
	[oImg release];
	[xImg release];
	[whoseTurn release];
	[myAlertView release];
    [super dealloc];
}

@end
