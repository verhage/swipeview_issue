//
//  ViewController.m
//  slider
//
//  Created by Rens Verhage on 8/12/13.
//  Copyright (c) 2013 Verhage IT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
	if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])
	{
		_items = @[@1,@2,@3,@4];
	}
	
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
	return [_items count];
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
	NSString *path = [[NSBundle mainBundle] pathForResource:[[_items objectAtIndex:index] description] ofType:@"html"];
	NSString *html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
	
	UIWebView *webView = (UIWebView *) view;
	if (webView == nil)
	{
		webView = [[UIWebView alloc] initWithFrame:swipeView.frame];
	}
	
	[webView loadHTMLString:html baseURL:[[NSBundle mainBundle] bundleURL]];
	
	return webView;
}

@end
