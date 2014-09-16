//
//  FirstVC.h
//  assignment000_try2
//
//  Created by Siri Tembunkiart on 9/14/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"

@interface FirstVC : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *buttonOne;
@property (weak, nonatomic) IBOutlet UIButton *buttonTwo;
@property (weak, nonatomic) IBOutlet UIButton *buttonThree;
@property (weak, nonatomic) IBOutlet UITextField *textFieldOne;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTwo;
@property (weak, nonatomic) IBOutlet UITextField *textFieldThree;
@property (weak, nonatomic) IBOutlet UISwitch *colorSwitch;
@property (assign, nonatomic) BOOL inverted;


@property (strong, nonatomic) NSArray *textFields;

@end
