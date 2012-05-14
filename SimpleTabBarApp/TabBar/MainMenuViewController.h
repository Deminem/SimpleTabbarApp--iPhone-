//
//  MainMenuViewController.h
//  SimpleTabBarApp
//
//  Created by Deminem on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarItemViewController.h"

@interface MainMenuViewController : UIViewController <UITabBarControllerDelegate> {
  
    UITabBarController *_tabBarViewController;
}

@property (strong, nonatomic) UITabBarController *tabBarViewController;

- (void)initializeTabBar;

@end
