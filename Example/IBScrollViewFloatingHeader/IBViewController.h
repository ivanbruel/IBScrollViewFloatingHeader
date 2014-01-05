//
//  IBViewController.h
//  IBScrollViewFloatingHeader
//
//  Created by Ivan Bruel on 04/01/14.
//  Copyright (c) 2014 Ivan Bruel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+IBFloatingHeader.h"
@interface IBViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@end
