//
//  alertmeViewController.m
//  alertme
//
//  Created by Matt on 8/17/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */
#import "alertmeViewController.h"

@implementation alertmeViewController
@synthesize loginlabel;
@synthesize username;
@synthesize whyisthishere;
NSString *user;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[loginlabel setText:@""];
	UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:@"Username:" message:@"this gets covered" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
	username = [[UITextField alloc] initWithFrame:CGRectMake(12.0, 45.0, 260.0, 25.0)];
	[username setBackgroundColor:[UIColor whiteColor]];
	[myAlertView addSubview:username];
	CGAffineTransform myTransform = CGAffineTransformMakeTranslation(0.0, 130.0); //original 130
	[myAlertView setTransform:myTransform];
	[myAlertView show];
	user = [username text];
	[myAlertView release];


    [super viewDidLoad];
}

-(IBAction)login
{
	NSString *user = [username text];

	[whyisthishere setText:@"The Username you used was:"];
	[loginlabel setText:user];
	
	
}
-(IBAction)redo
{
	self.viewDidLoad;
}
/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
