//
//  HelloWorldViewController.h
//  HelloApple
//
//  Created by James Yu on 13-3-21.
//  Copyright (c) 2013年 With You. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) NSString *userName;

- (IBAction)changeGreeting:(id)sender;

@end
