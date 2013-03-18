//
//  ViewController.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"
#import "FileWriter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

#pragma mark - User actions
-(IBAction)cambioTipoLog:(id)sender
{
    UISegmentedControl * tipoLogControl=(UISegmentedControl *)sender;
    NSString * tipo=[tipoLogControl titleForSegmentAtIndex:tipoLogControl.selectedSegmentIndex];
    NSLog(@"Cambio el log a %@", tipo);

}
-(IBAction)comienzaEdicionNombre:(id)sender
{
    UITextField * nombreTF=(UITextField *)sender;
    NSLog(@"Comienza edicion de nombre: %@",nombreTF.text);
}
-(IBAction)comienzaEdicionApellido:(id)sender
{
    
    UITextField * apellidoTF=(UITextField *)sender;
    NSLog(@"Comienza edicion de apellido: %@",apellidoTF.text);

}
-(IBAction)cambioFechaNacimiento:(id)sender
{
    UIDatePicker * datePicker=(UIDatePicker *)sender;
    NSLog(@"Cambio la fecha de nacimiento a: %@",[datePicker.date description]);

}
-(IBAction)terminaEdicionNombre:(id)sender
{
    UITextField * nombreTF=(UITextField *)sender;
    NSLog(@"Termina edicion de nombre: %@",nombreTF.text);
}
-(IBAction)terminaEdicionApellido:(id)sender
{
    UITextField * apellidoTF=(UITextField *)sender;
    NSLog(@"Termina edicion de apellido: %@",apellidoTF.text);

}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

@end
