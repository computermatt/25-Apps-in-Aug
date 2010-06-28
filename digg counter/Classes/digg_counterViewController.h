//
//  digg_counterViewController.h
//  digg counter
//
///  Created by Matt on 8/25/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//	Code comes as is due to the use of the digg button image

#import <UIKit/UIKit.h>

@interface digg_counterViewController : UIViewController {
	NSTimer *timer;

	IBOutlet UILabel *diggs;
}
@property (nonatomic, retain) UILabel *diggs;
-(IBAction)diggit;
@end

