//
//  SimpleTabBarAppDelegate.h
//  SimpleTabBarApp
//
//  Created by Deminem on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RootViewController.h"

@interface SimpleTabBarAppDelegate : UIResponder <UIApplicationDelegate> {

    RootViewController *_rootViewController;
}

@property (strong, nonatomic) RootViewController *rootViewController;

+ (SimpleTabBarAppDelegate *)sharedDelegate;

@end
