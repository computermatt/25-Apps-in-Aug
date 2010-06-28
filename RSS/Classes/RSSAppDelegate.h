//
//  RSSAppDelegate.h
//  RSS
//
//  Created by Matt on 8/6/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//

@interface RSSAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

