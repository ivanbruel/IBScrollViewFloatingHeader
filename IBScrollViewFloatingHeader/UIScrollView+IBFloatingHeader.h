//
//  UIScrollView+IBFloatingHeader.h
//  IBScrollViewFloatingHeader
//
//  Created by Ivan Bruel on 04/01/14.
//  Copyright (c) 2014 Ivan Bruel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (IBFloatingHeader)<UIGestureRecognizerDelegate>

@property(nonatomic,retain) UIView* floatingHeaderView;

-(void)removeContentOffsetObserver;

@end
