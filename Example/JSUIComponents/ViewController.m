//
//  ViewController.m
//  JSUIComponents
//
//  Created by Jitendra Singh on 8/6/16.
//  Copyright © 2016 Jitendra Singh. All rights reserved.
//

#import "ViewController.h"
#import "JSInputField.h"
#import "JSDropdownField.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    JSInputField *inputField = [[JSInputField alloc] initWithFrame:CGRectMake(10, 100, 300, 50)];
    [self.view addSubview:inputField];
    [inputField setPlaceholder:@"Enter Text"];
    [inputField setRoundedCorners:UIRectCornerAllCorners];
    [inputField addValidationRule:JSCreateRuleNotNullValue]; //This will validate field for null value. It will show error if field is empty.
    [inputField addValidationRule:JSCreateRuleNumeric(2)];  //This will validate field for numeric values and restrict to enter value upto 2 decimal places.
    
    
    JSDropdownField *dropdownField = [[JSDropdownField alloc] initWithFrame:CGRectMake(10, 200, 300, 50)];
    [self.view addSubview:dropdownField];
    [dropdownField setPlaceholder:@"Select"];
    [dropdownField setRoundedCorners:UIRectCornerAllCorners];
    [dropdownField setOptionArray:@[@"One",@"Two",@"Three",@"Four",@"Five",@"Six",@"Seven"]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



@end
