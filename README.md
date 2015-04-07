IBScrollViewFloatingHeader
==========================

This project is inspired by Facebook's Floating Header View on iOS.

The header view will float on the top on two cases:
 - ScrollView is scrolled all the way to the top;
 - User scrolled up faster than a normal scroll.

<img src="images/image1.jpg" alt="Facebook Example" style="width:100px;"/>

This is supposed to work on iOS 5+.

Supported Views:

 - UIScrollView
 - UITableView
 - UICollectionView -- ***untested***
 
## Usage
Add UIScrollView+IBFloatingHeader.h and UIScrollView+IBFloatingHeader.m to your Xcode project.

Import UIScrollView+IBFloatingHeader.h on your desired UIViewController.

	#import "UIScrollView+IBFloatingHeader.h"
	
Create a custom UIView and set it as the floating header for the UIScrollView/UITableView of your choice.

	UIView* header = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width, 40)];
    [header setBackgroundColor:[UIColor redColor]];
    [self.scrollView setFloatingHeaderView:header];

In your view controller, add:
	`- (void)viewWillDisappear:(BOOL)animated {
    	[self.tableView removeContentOffsetObserver];
	}`
	
Access the floating view by sending the floatingHeaderView message to the UIScrollView/UITableView

    UIView* floatingHeaderView = [self.tableView floatingHeaderView];
    
### Known Issues
None yet.

###Contributions
- Contributions and suggestions are welcome.