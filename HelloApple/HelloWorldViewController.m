//
//  HelloWorldViewController.m
//  HelloApple
//
//  Created by James Yu on 13-3-21.
//  Copyright (c) 2013年 With You. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()
@property (weak, nonatomic) IBOutlet UITextField *testField;
@property (weak, nonatomic) IBOutlet UILabel *lable;


- (IBAction)changeGreeting:(id)sender;

@end

@implementation HelloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    
    self.userName = self.testField.text;
    NSString *nameString = self.userName;
    if([nameString length] == 0 ){
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.lable.text = greeting;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    if ( textField == self.testField )
        [textField resignFirstResponder];
    return YES;
}

@end
