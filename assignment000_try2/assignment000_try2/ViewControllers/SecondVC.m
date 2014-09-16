//
//  SecondVC.m
//  assignment000_try2
//
//  Created by Siri Tembunkiart on 9/14/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import "SecondVC.h"1
#import "FirstVC.h"

@interface SecondVC ()

@end

@implementation SecondVC

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
    _changeIt.text = _changeLabel;
    NSLog(@"Label Changed %@", _changeLabel);
    if (_backgroundBool == false) {
        _changeIt.backgroundColor = [UIColor whiteColor];
        _changeIt.textColor = [UIColor blackColor];
    }
    else {
        _changeIt.backgroundColor = [UIColor blackColor];
        _changeIt.textColor = [UIColor whiteColor];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
