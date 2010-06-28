#import "Controller.h"
#import "Homeview.h"
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "White.h"
#import	"Red.h"

@implementation Controller
-(void)awakeFromNib
{
	[self addSubview:homeview];
}
-(void)red
{
	[homeview removeFromSuperview];
	[self addSubview:red];
}
-(void)white
{
	[homeview removeFromSuperview];
	[self addSubview:white];
}
-(void)redreturn
{
	[red removeFromSuperview];
	[self addSubview:homeview];
}
-(void)whitereturn
{
	[white removeFromSuperview];
	[self addSubview:homeview];
}
@end
