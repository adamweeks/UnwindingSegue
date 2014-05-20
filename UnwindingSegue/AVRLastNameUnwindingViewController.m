//
//  AVRLastNameUnwindingViewController.m
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

static NSString *AVRStoryboardUnwindSegue = @"AVRStoryboardUnwindSegue";

#import "AVRLastNameUnwindingViewController.h"

@interface AVRLastNameUnwindingViewController ()

@property (strong, nonatomic) IBOutlet UITextField *lastNameTextField;

@end

@implementation AVRLastNameUnwindingViewController

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
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:AVRStoryboardUnwindSegue]) {
        //Combine First and Last Names
        NSString *lastName = self.lastNameTextField.text;
        self.fullName = [NSString stringWithFormat:@"%@ %@",self.firstName, lastName];
    }
}


@end
