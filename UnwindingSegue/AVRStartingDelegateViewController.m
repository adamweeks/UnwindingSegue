//
//  AVRStartingDelegateViewController.m
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRStartingDelegateViewController.h"

@interface AVRStartingDelegateViewController ()

@property (strong, nonatomic) IBOutlet UILabel * fullNameLabel;

@end

@implementation AVRStartingDelegateViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[AVRFirstNameDelegateViewController class]]){
        AVRFirstNameDelegateViewController *firstNameVC = (AVRFirstNameDelegateViewController *)segue.destinationViewController;
        firstNameVC.fullNameDelegate = self;
    }
}


#pragma mark - Delegate

- (void)fullNameEntered:(NSString *)fullName
{
    self.fullNameLabel.text = fullName;
    [self.navigationController popToViewController:self animated:YES];
}

@end
