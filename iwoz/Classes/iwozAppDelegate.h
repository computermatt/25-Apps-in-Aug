//
//  iwozAppDelegate.h
//  iwoz
//
//  Created by Matt on 8/11/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//  No license due to the fact I'm using a copywritten song (song by Frank Sinatra), and an image of woz

#import <UIKit/UIKit.h>

@class iwozViewController;

@interface iwozAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iwozViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iwozViewController *viewController;

@end

