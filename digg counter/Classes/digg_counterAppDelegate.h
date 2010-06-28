//
//  digg_counterAppDelegate.h
//  digg counter
//
//  Created by Matt on 8/25/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//	Code comes as is due to the use of the digg button image

#import <UIKit/UIKit.h>

@class digg_counterViewController;

@interface digg_counterAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    digg_counterViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet digg_counterViewController *viewController;

@end

