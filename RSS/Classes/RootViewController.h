//
//  RootViewController.h
//  RSS
//
//  Created by Matt on 8/6/09.
//  Copyright 25appsinaug 2009. All rights reserved.
//

@interface RootViewController : UITableViewController {
	IBOutlet UITableView * newsTable;
	UIActivityIndicatorView * activityIndicator;
	CGSize cellSize;
	NSXMLParser * rssParser;
	NSMutableArray * stories;
	NSMutableDictionary * item;
	NSString * currentElement;
	NSMutableString * currentTitle, * currentDate, * currentSummary, * currentLink;
}

@end
