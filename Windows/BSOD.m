
//  Created by Matt on 8/18/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "BSOD.h"
#import "MainView.h"

@implementation BSOD
@synthesize image;
- (void)viewDidLoad {
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"bsod" ofType:@"jpg"]];
	[image setImage:img];
    [super viewDidLoad];
}
-(IBAction)anybuttonpressed
{
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"bsod" ofType:@"jpg"]];
	[image setImage:img];	
	[controller bsodanybutton];
}
-(IBAction)button
{
	UIImage *img = [UIImage imageWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"original" ofType:@"jpg"]];
[image setImage:img];}
- (void)dealloc {
    [super dealloc];
}
@end
