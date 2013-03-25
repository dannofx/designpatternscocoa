//
//  SecondViewController.m
//  SingletonPattern
//
//  Created by Danno on 24/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ContactoViewController.h"
#import "Logger.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

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

-(IBAction)emailDidChanged:(id)sender
{
    UITextField * textField=(UITextField *)sender;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Email cambio a %@",textField.text ];

}
-(IBAction)addressDidChange:(id)sender
{
    UITextField * textField=(UITextField *)sender;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Direccion cambio a %@",textField.text];

}
-(IBAction)phoneNumberDidChange:(id)sender
{
    UITextField * textField=(UITextField *)sender;
    [[Logger sharedInstance] writeIndexedLogWithText:@"Numero telefonico  cambio a %@",textField.text];

}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}


@end
