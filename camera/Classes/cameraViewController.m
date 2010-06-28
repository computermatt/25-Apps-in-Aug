//
//  cameraViewController.m
//  camera
//
//  Created by Matt on 8/26/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//
/*
 
 This work is licensed under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License.
 To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/us/ or send a letter to Creative Commons, 171 Second Street, Suite 300, San Francisco, California, 94105, USA.
 */

#import "cameraViewController.h"

@implementation cameraViewController
@synthesize imageView;
@synthesize takePictureButton;
@synthesize selectFromCameraRollButton;





// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {

    [super viewDidLoad];
}





- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (IBAction)takepic:(id)sender 
{
	UIImagePickerController *picker = [[UIImagePickerController alloc] init];
	picker.delegate = self;
	picker.sourceType = (sender == takePictureButton) ? UIImagePickerControllerSourceTypeCamera : UIImagePickerControllerSourceTypeSavedPhotosAlbum;
	picker.allowsImageEditing = YES;
	[self presentModalViewController:picker animated:YES];
	[picker release];
	
}
- (IBAction)selectpic 
{
	if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) 
	{
		UIImagePickerController *picker = [[UIImagePickerController alloc] init];
		picker.delegate = self;
		picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
		picker.allowsImageEditing = YES;
		[self presentModalViewController:picker animated:YES];
		[picker release];
	}
	
}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo
{
	imageView.image = image;
	[picker dismissModalViewControllerAnimated:YES];
	
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker 
{
	
	[picker dismissModalViewControllerAnimated:YES];
}
- (void)dealloc {
    [super dealloc];
}

@end
