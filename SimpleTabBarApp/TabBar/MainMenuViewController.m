//
//  MainMenuViewController.m
//  SimpleTabBarApp
//
//  Created by Deminem on 5/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenuViewController.h"

@implementation MainMenuViewController

@synthesize tabBarViewController = _tabBarViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
       
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [self initializeTabBar];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)initializeTabBar {
    
    CGSize screenSize = [UIScreen mainScreen].bounds.size;
    CGRect screenBounds = CGRectMake(0, 20, screenSize.width, screenSize.height);
    
    _tabBarViewController = [[UITabBarController alloc] init];
    _tabBarViewController.view.bounds = screenBounds;
    
    TabBarItemViewController *tabItem1 = [[TabBarItemViewController alloc] initWithTitle:@"Tab 1"];
    TabBarItemViewController *tabItem2 = [[TabBarItemViewController alloc] initWithTitle:@"Tab 2"];
    TabBarItemViewController *tabItem3 = [[TabBarItemViewController alloc] initWithTitle:@"Tab 3"];
    TabBarItemViewController *tabItem4 = [[TabBarItemViewController alloc] initWithTitle:@"Tab 4"];
    
    UINavigationController *navController1 = [[UINavigationController alloc] initWithRootViewController:tabItem1];
    UINavigationController *navController2 = [[UINavigationController alloc] initWithRootViewController:tabItem2];
    UINavigationController *navController3 = [[UINavigationController alloc] initWithRootViewController:tabItem3];
    UINavigationController *navController4 = [[UINavigationController alloc] initWithRootViewController:tabItem4];
    
    //initial settings for item1
    tabItem1.view.backgroundColor = [UIColor yellowColor];
    _tabBarViewController.delegate = self;
    _tabBarViewController.selectedIndex = 0;
    
    // add all the tab items
    _tabBarViewController.viewControllers = [NSArray arrayWithObjects:navController1, navController2, navController3, navController4, nil];
    [self.view addSubview:_tabBarViewController.view];
    
    [navController1 release];
    [navController2 release];
    [navController3 release];
    [navController4 release];
}


- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    if (tabBarController.selectedIndex == 0) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor yellowColor];
    }
    else if (tabBarController.selectedIndex == 1) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor redColor];
    }
    else if (tabBarController.selectedIndex == 2) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor blueColor];
    }
    else if (tabBarController.selectedIndex == 3) {
        [((UINavigationController *)viewController) visibleViewController].view.backgroundColor = [UIColor greenColor];
    }
}

@end
