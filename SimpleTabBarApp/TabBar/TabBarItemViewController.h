//
//  TabBarItemViewController.h
//  SimpleTabBarApp
//
//  Created by Deminem on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabBarItemViewController : UIViewController {
    
    IBOutlet UILabel *tabTitle;
}

@property (strong, nonatomic) UILabel *tabTitle;

- (id)initWithTitle:(NSString *)title;

@end

