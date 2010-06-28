//
//  step_counterViewController.h
//  step counter
//
//  Created by Matt  on 8/24/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#define kAccelerationThreshold		1.4
#define kUpdateInterval			(1.0f/10.0f)
#import <UIKit/UIKit.h>

@interface step_counterViewController : UIViewController <UIAccelerometerDelegate> {
	IBOutlet UILabel *stepstaken;

}

@property (nonatomic, retain) UILabel *stepstaken;
-(IBAction)reset;
-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
@end

