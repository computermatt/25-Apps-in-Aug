//
//  mymapAppDelegate.h
//  mymap
//
//  Created by Matt on 8/3/09.


#import <UIKit/UIKit.h>

@class mymapViewController;

@interface mymapAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    mymapViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet mymapViewController *viewController;

@end

