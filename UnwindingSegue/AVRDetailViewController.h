//
//  AVRDetailViewController.h
//  UnwindingSegue
//
//  Created by Adam Weeks on 5/13/14.
//  Copyright (c) 2014 AppsVersusRobots, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AVRDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
