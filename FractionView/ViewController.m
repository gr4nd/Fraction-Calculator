//
//  ViewController.m
//  FractionView
//
//  Created by Andrew on 03.03.15.
//  Copyright (c) 2015 Andrew. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (IBAction)sumButton:(id)sender {
    NSLog(@"SumButton pressed");
    Fraction* f1=[[Fraction alloc] init];
    f1.numerator=[[self.numerator1TextField text] intValue];
    f1.denominator=[[self.denominator1TextField text] intValue];
    [f1 print];
    Fraction* f2=[[Fraction alloc] init];
    f2.numerator=[[self.numerator2TextField text] intValue];
    f2.denominator=[[self.denominator2TextField text] intValue];
    [f2 print];
    [f1 add:f2];
    [f1 print];
    NSString* result=[NSString stringWithFormat:@"%i/%i",f1.numerator,f1.denominator];
    self.resultTextField.text=result;
    
}

- (IBAction)subtractButton:(id)sender {
    NSLog(@"subtract Button pressed");
    Fraction* f1=[[Fraction alloc] init];
    f1.numerator=[[self.numerator1TextField text] intValue];
    f1.denominator=[[self.denominator1TextField text] intValue];
    [f1 print];
    Fraction* f2=[[Fraction alloc] init];
    f2.numerator=[[self.numerator2TextField text] intValue];
    f2.denominator=[[self.denominator2TextField text] intValue];
    [f2 print];
    [f1 subtract:f2];
    [f1 print];
    NSString* result=[NSString stringWithFormat:@"%i/%i",f1.numerator,f1.denominator];
    self.resultTextField.text=result;
}

- (IBAction)multiplyButton:(id)sender {
    NSLog(@"multiply Button pressed");
    Fraction* f1=[[Fraction alloc] init];
    f1.numerator=[[self.numerator1TextField text] intValue];
    f1.denominator=[[self.denominator1TextField text] intValue];
    [f1 print];
    Fraction* f2=[[Fraction alloc] init];
    f2.numerator=[[self.numerator2TextField text] intValue];
    f2.denominator=[[self.denominator2TextField text] intValue];
    [f2 print];
    [f1 multiply:f2];
    [f1 print];
    NSString* result=[NSString stringWithFormat:@"%i/%i",f1.numerator,f1.denominator];
    self.resultTextField.text=result;
}

- (IBAction)divideButton:(id)sender {
    NSLog(@"DivideButton pressed");
    Fraction* f1=[[Fraction alloc] init];
    f1.numerator=[[self.numerator1TextField text] intValue];
    f1.denominator=[[self.denominator1TextField text] intValue];
    [f1 print];
    Fraction* f2=[[Fraction alloc] init];
    f2.numerator=[[self.numerator2TextField text] intValue];
    f2.denominator=[[self.denominator2TextField text] intValue];
    [f2 print];
    [f1 divide:f2];
    [f1 print];
    NSString* result=[NSString stringWithFormat:@"%i/%i",f1.numerator,f1.denominator];
    self.resultTextField.text=result;
}

@end
