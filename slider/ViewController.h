//
//  ViewController.h
//  slider
//
//  Created by Rens Verhage on 8/12/13.
//  Copyright (c) 2013 Verhage IT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SwipeView.h>

@interface ViewController : UIViewController <SwipeViewDataSource, SwipeViewDelegate>

@property (readonly) NSArray *items;
@property IBOutlet SwipeView *swipeView;

@end
