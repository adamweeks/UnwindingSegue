//
//  AVRFirstNameBlocksViewController.m
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import "AVRFirstNameBlocksViewController.h"
#import "AVRLastNameBlocksViewController.h"

@interface AVRFirstNameBlocksViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstNameField;

@end

@implementation AVRFirstNameBlocksViewController

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
    if([segue.destinationViewController isKindOfClass:[AVRLastNameBlocksViewController class]]){
        AVRLastNameBlocksViewController *lastNameVC = (AVRLastNameBlocksViewController *)segue.destinationViewController;
        __weak __typeof__(self) weakSelf = self;
        [lastNameVC setLastNameEnteredBlock:^(NSString *lastName) {
            [weakSelf dismissViewControllerAnimated:YES completion:^{
                NSString *firstName = weakSelf.firstNameField.text;
                NSString *fullName = [NSString stringWithFormat:@"%@ %@",firstName, lastName];
                weakSelf.fullNameEnteredBlock(fullName);
            }];
        }];
    }
}


@end
