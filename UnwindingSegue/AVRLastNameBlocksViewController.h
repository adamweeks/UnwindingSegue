//
//  AVRLastNameBlocksViewController.h
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVRLastNameBlocksViewController : UIViewController

@property (copy, nonatomic) void (^lastNameEnteredBlock)(NSString *fullName);

@end
