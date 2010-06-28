//  Created by Matt on 8/16/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "controller.h"
#import "Mapview.h"
#import "locationview.h"

@implementation controller
-(void)awakeFromNib
{
	[self addSubview:locatview];
}
-(void)map
{
	[locatview removeFromSuperview];
	[self addSubview:mview];
	
}
-(void)locate
{
	[mview removeFromSuperview];
	[self addSubview:locatview];
}
@end
