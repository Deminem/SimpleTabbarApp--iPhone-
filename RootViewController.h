//
//  RootViewController.h
//  SimpleTabBarApp
//
//  Created by Deminem on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainMenuViewController.h"

@interface RootViewController : UIViewController {
    
    IBOutlet UIButton *showMainMenuBtn;
}

@property (strong, nonatomic) IBOutlet UIButton *showMainMenuBtn;

- (IBAction)showMainMenu:(id)sender;

@end
