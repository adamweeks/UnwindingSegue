//
//  AVRFirstNameDelegateViewController.h
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AVRLastNameDelegateViewController.h"

@protocol FullNameDelegate <NSObject>
@required
- (void)fullNameEntered:(NSString *)fullName;
@end

@interface AVRFirstNameDelegateViewController : UIViewController <LastNameDelegate>

@property (weak, nonatomic) id <FullNameDelegate> fullNameDelegate;

@end

