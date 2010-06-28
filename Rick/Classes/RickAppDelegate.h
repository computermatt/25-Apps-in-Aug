//
//  RickAppDelegate.h
//  Rick
//
//  Created by Matt on 8/22/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  Thanks to appsamuck for providing the code to use MediaPlayer
//  Apple's documentation and sample code for MediaPlayer sucks (too complicated)
//  This application has no license and is provided as in because I am using a copyrighted video
//  As well as using code provided from somebody else

#import <UIKit/UIKit.h>

@class RickViewController;

@interface RickAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    RickViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RickViewController *viewController;

@end

