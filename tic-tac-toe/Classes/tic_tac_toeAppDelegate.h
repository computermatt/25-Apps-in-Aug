//
//  tic_tac_toeAppDelegate.h
//  tic-tac-toe
//
//  Created by Matt on 8/4/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
// Used guide here: http://www.iphonedevsdk.com/forum/iphone-sdk-game-development/13001-tic-tac-toe-tutorial-walkthrough.html
// No license is used for this, as it is not a unique creation of mine

#import <UIKit/UIKit.h>

@class tic_tac_toeViewController;

@interface tic_tac_toeAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    tic_tac_toeViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet tic_tac_toeViewController *viewController;

@end

