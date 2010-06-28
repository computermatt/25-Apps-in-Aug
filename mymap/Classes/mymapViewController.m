//
//  mymapViewController.m
//  mymap
//
//  Created by Matt on 8/3/09.


#import "mymapViewController.h"

@implementation mymapViewController




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}






// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad 
{
    [super viewDidLoad];
	mapview=[[MKMapView alloc]initWithFrame:self.view.bounds];
	[self.view insertSubview:mapview atIndex:0];
	
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
	
}

- (void)viewDidUnload {
}


- (void)dealloc {
    [super dealloc];
}

@end
