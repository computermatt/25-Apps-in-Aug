//
//  alertmeViewController.h
//  alertme
//
//  Created by Matt on 8/17/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import <UIKit/UIKit.h>

@interface alertmeViewController : UIViewController {
	IBOutlet UILabel *loginlabel;
	UITextField *username;
	IBOutlet UILabel *whyisthishere;
}
@property (nonatomic, retain) UILabel *loginlabel;
@property (nonatomic, retain) UITextField *username;
@property (nonatomic, retain) UILabel *whyisthishere;
-(IBAction)login;
-(IBAction)redo;
@end

