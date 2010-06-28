//
//  google_voiceAppDelegate.h
//  google voice
//
//  Created by Matt  on 8/9/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  

#import <UIKit/UIKit.h>

@class google_voiceViewController;

@interface google_voiceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    google_voiceViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet google_voiceViewController *viewController;

@end

