//
//  FirstViewController.m
//  SingletonPattern
//
//  Created by Danno on 24/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "DatosGeneralesViewController.h"
#import "Logger.h"

@interface DatosGeneralesViewController ()

@end

@implementation DatosGeneralesViewController

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

-(IBAction)firstNameDidChanged:(id)sender
{
    UITextField * textField=(UITextField *)sender;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Nombre cambio a %@",textField.text];
    
}
-(IBAction)lastNameDidChange:(id)sender
{
    
    UITextField * textField=(UITextField *)sender;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Apellido cambio a %@",textField.text];
    
}
-(IBAction)ageDidChange:(id)sender
{
    NSInteger edad=((UISlider *)sender).value;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Edad cambio a %d",edad ];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}


@end
