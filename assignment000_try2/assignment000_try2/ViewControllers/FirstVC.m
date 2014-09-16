//
//  FirstVC.m
//  assignment000_try2
//
//  Created by Siri Tembunkiart on 9/14/14.
//  Copyright (c) 2014 Bo Assignment. All rights reserved.
//

#import "FirstVC.h"
#import "SecondVC.h"

@interface FirstVC ()

@end

@implementation FirstVC

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
    _textFields = @[_textFieldOne, _textFieldTwo, _textFieldThree];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)colorSwitchChange: (id)sender
{
    _colorSwitch = (UISwitch *) sender;
    
    _inverted = !_colorSwitch.on;
    
    if ([_colorSwitch isOn])
    {
        NSLog(@"it's on!");
        _inverted = false;
    }
    else
    {
        NSLog(@"it's off!");
        _inverted = true;
    }
}

-(IBAction)buttonClick:(id)sender
{
    __weak UIButton *weakButton = (UIButton *)sender;
    for (__weak UITextField *weakTextField in _textFields) {
        if (weakTextField.tag == weakButton.tag) {
            NSString *changer = weakTextField.text;
            NSLog (@"trythis %@", changer);
            SecondVC* secondViewCon=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
            secondViewCon.changeLabel = changer;
            if (_inverted == false) {
                secondViewCon.backgroundBool = false;
                NSLog(@"Should be white.");
            }
            else {
                secondViewCon.backgroundBool = true;
                NSLog (@"Should be black.");
            }
            [self.navigationController pushViewController:secondViewCon animated:YES];
        }
    }
}

//- (IBAction)buttonOneClick:(id)sender
//{
//    __weak UITextField *weakTextField = (UITextField *)_textFields[0];
//    NSString *changer = weakTextField.text;
//    NSLog(@"try this %@", changer);
//    [self.textFieldOne resignFirstResponder];
//    SecondVC* secondViewCon=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
//    secondViewCon.changeLabel = changer;
//    if (_inverted == false) {
//        secondViewCon.backgroundBool = false;
//    }
//    else {
//        secondViewCon.backgroundBool = true;
//    }
//    [self.navigationController pushViewController:secondViewCon animated:YES];
//}
//
//- (IBAction)buttonTwoClick:(id)sender
//{
//    __weak UITextField *weakTextField = (UITextField *)_textFields[1];
//    NSString *changer = weakTextField.text;
//    NSLog(@"second one %@", changer);
//    [self.textFieldTwo resignFirstResponder];
//    SecondVC *secondViewCon=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
//    secondViewCon.changeLabel = changer;
//    if (_inverted == false) {
//        secondViewCon.backgroundBool = false;
//    }
//    else {
//        secondViewCon.backgroundBool = true;
//    }
//    [self.navigationController pushViewController:secondViewCon animated:YES];
//}
//
//- (IBAction)buttonThreeClick:(id)sender
//{
//    __weak UITextField *weakTextField = (UITextField *)_textFields[2];
//    NSString *changer = weakTextField.text;
//    NSLog (@"third time %@", changer);
//    [self.textFieldThree resignFirstResponder];
//    SecondVC *secondViewCon=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
//    secondViewCon.changeLabel = changer;
//    if (_inverted == false) {
//        secondViewCon.backgroundBool = false;
//    }
//    else {
//        secondViewCon.backgroundBool = true;
//    }
//    [self.navigationController pushViewController:secondViewCon animated:YES];
//}



//- (IBAction)colorSwitchChange:(id)sender
//{
//    _inverted = true;
//    SecondVC *secondViewCon=[self.storyboard instantiateViewControllerWithIdentifier:@"SecondVC"];
//    if (_inverted == true)
//    {
//        secondViewCon.changeIt.backgroundColor = [UIColor blackColor];
//        NSString *invert = @"apples";
//        NSLog(@"inverted is a-go %@", invert);
//    }
//    else
//    {
//        secondViewCon.changeIt.backgroundColor = [UIColor whiteColor];
//    }
//}




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
