//
//  AVRFirstNameDelegateViewController.m
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRFirstNameDelegateViewController.h"
#import "AVRLastNameDelegateViewController.h"

@interface AVRFirstNameDelegateViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@end

@implementation AVRFirstNameDelegateViewController

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

#pragma mark - Delegate
- (void)lastNameEntered:(NSString *)lastName
{
    //Combine First and Last Names
    NSString *firstName = self.firstNameField.text;
    NSString *fullName = [NSString stringWithFormat:@"%@ %@",firstName, lastName];
    [self dismissViewControllerAnimated:YES completion:^{        
        [self.fullNameDelegate fullNameEntered:fullName];
    }];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.destinationViewController isKindOfClass:[AVRLastNameDelegateViewController class]]){
        AVRLastNameDelegateViewController *lastNameVC = (AVRLastNameDelegateViewController *)segue.destinationViewController;
        lastNameVC.lastNameDelegate = self;
    }
}



@end
