//  Created by Matt on 8/16/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class controller;
@class Mapview;
@class locationview;
@interface locationview : UIView <CLLocationManagerDelegate>{
	IBOutlet controller *ctrl;
	
	CLLocationManager	*locationManager;
	CLLocation	*startingPoint;
	IBOutlet	UILabel *latitudeLabel;
	IBOutlet	UILabel *longitudeLabel;
	IBOutlet	UILabel *altitudeLabel;
	IBOutlet	UILabel *trip;
}
@property (retain, nonatomic) CLLocationManager	*locationManager;
@property (retain, nonatomic) CLLocation *startingPoint;
@property (retain, nonatomic) UILabel *latitudeLabel;
@property (retain, nonatomic) UILabel *longitudeLabel;
@property (retain, nonatomic) UILabel *altitudeLabel;
@property (retain, nonatomic) UILabel *trip;
-(IBAction)return;
@end
