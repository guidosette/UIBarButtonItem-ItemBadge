//
//  ViewController.m
//  ItemBadgeExample
//
//  Created by Guido Fanfani on 22/09/17.
//  Copyright © 2017 Guido Fanfani. All rights reserved.
//

#import "ViewController.h"
#import "UIBarButtonItem+ItemBadge.h"

@interface ViewController ()

@end

@implementation ViewController {
    int notificationNumber;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    notificationNumber = 2;
    //add badge to navBar
    UIBarButtonItem *notificationItem = self.navigationItem.rightBarButtonItems[0];
    [notificationItem setCustomBadge:[NSString stringWithFormat:@"%d", notificationNumber]];
}

- (IBAction)addBadge:(id)sender {
    notificationNumber++;
    UIBarButtonItem *notificationItem = self.navigationItem.rightBarButtonItems[0];
    [notificationItem setCustomBadge:[NSString stringWithFormat:@"%d", notificationNumber]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
