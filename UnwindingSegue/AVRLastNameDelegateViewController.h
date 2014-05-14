//
//  AVRLastNameDelegateViewController.h
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LastNameDelegate <NSObject>
@required
- (void)lastNameEntered:(NSString *)lastName;
@end


@interface AVRLastNameDelegateViewController : UIViewController

@property (weak, nonatomic) id <LastNameDelegate> lastNameDelegate;

@end
