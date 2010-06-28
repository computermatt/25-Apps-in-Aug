//  Created by Matt on 8/16/09.
//  Copyright 25appsinaug 2009. Some rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "locationview.h"
#import "controller.h"
@implementation locationview
@synthesize locationManager;
@synthesize startingPoint;
@synthesize latitudeLabel;
@synthesize longitudeLabel;
@synthesize altitudeLabel;
@synthesize trip;

- (void)viewDidLoad {
	self.locationManager = [[CLLocationManager alloc] init];
	[locationManager startUpdatingLocation];
	locationManager.delegate = self;
	locationManager.distanceFilter = kCLDistanceFilterNone; 
	locationManager.desiredAccuracy = kCLLocationAccuracyBest;
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}





- (void)dealloc {
	
	[locationManager release];
	[startingPoint release];
	[latitudeLabel release];
	[longitudeLabel release];
	[altitudeLabel release];
	[trip release];
	
	[super dealloc];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
	
	if (startingPoint == nil)
		self.startingPoint = newLocation;
	
	NSString *latitudeString = [[NSString alloc] initWithFormat:@"%g°", newLocation.coordinate.latitude];
	latitudeLabel.text = latitudeString;
	[latitudeString release];
	
	NSString *longitudeString = [[NSString alloc] initWithFormat:@"%g°", newLocation.coordinate.longitude];
	longitudeLabel.text = longitudeString;
	[longitudeString release];

	
	NSString *altitudeString = [[NSString alloc] initWithFormat:@"%gm", newLocation.altitude];
	altitudeLabel.text = altitudeString;
	[altitudeString release];

	
	CLLocationDistance distance = [newLocation getDistanceFrom:startingPoint];
	NSString *distanceString = [[NSString alloc] initWithFormat:@"%gm", distance];
	trip.text = distanceString;
	[distanceString release];
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
	
	NSString *errorType = (error.code == kCLErrorDenied) ? @"Access Denied" : @"Unknown Error";
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error gettingg location from Core Location" message:errorType delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles:nil];
	[alert show];
	[alert release];
	
}





-(IBAction)return
{
	[ctrl map];
}
@end
