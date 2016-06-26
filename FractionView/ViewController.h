//
//  ViewController.h
//  FractionView
//
//  Created by Andrew on 03.03.15.
//  Copyright (c) 2015 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *numerator1TextField;
@property (weak, nonatomic) IBOutlet UITextField *denominator1TextField;
@property (weak, nonatomic) IBOutlet UITextField *numerator2TextField;
@property (weak, nonatomic) IBOutlet UITextField *denominator2TextField;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;


- (IBAction)sumButton:(id)sender;
- (IBAction)subtractButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)divideButton:(id)sender;



@end

