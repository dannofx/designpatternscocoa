//
//  ViewController.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"
#import "FileWriter.h"
#import "Logger.h"

@interface ViewController ()
{
    id<Logger> logger;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    logger=[Logger loggerWithType:LoggerTypeTimeStamp];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

#pragma mark - User actions
-(IBAction)cambioTipoLog:(id)sender
{
    UISegmentedControl * tipoLogControl=(UISegmentedControl *)sender;
    
    //Cambia tipo de log
    
    switch (tipoLogControl.selectedSegmentIndex) {
        case 0:
            logger=[Logger loggerWithType:LoggerTypeTimeStamp];
            break;
        case 1:
            logger=[Logger loggerWithType:LoggerTypeSingle];
            break;
        case 2:
            logger=[Logger loggerWithType:LoggerTypeFile];
            break;
        case 3:
        default:
            logger=[Logger loggerWithType:LoggerTypeNone];
            break;
    }
    
    NSString * tipo=[tipoLogControl titleForSegmentAtIndex:tipoLogControl.selectedSegmentIndex];
    [logger writeLogWithText:@"Cambio el log a %@", tipo];

}
-(IBAction)comienzaEdicionNombre:(id)sender
{
    UITextField * nombreTF=(UITextField *)sender;
    [logger writeLogWithText:@"Comienza edicion de nombre: %@",nombreTF.text];
}
-(IBAction)comienzaEdicionApellido:(id)sender
{
    
    UITextField * apellidoTF=(UITextField *)sender;
    [logger writeLogWithText:@"Comienza edicion de apellido: %@",apellidoTF.text];

}
-(IBAction)cambioFechaNacimiento:(id)sender
{
    UIDatePicker * datePicker=(UIDatePicker *)sender;
    [logger writeLogWithText:@"Cambio la fecha de nacimiento a: %@",[datePicker.date description]];

}
-(IBAction)terminaEdicionNombre:(id)sender
{
    UITextField * nombreTF=(UITextField *)sender;
    [logger writeLogWithText:@"Termina edicion de nombre: %@",nombreTF.text];
}
-(IBAction)terminaEdicionApellido:(id)sender
{
    UITextField * apellidoTF=(UITextField *)sender;
    [logger writeLogWithText:@"Termina edicion de apellido: %@",apellidoTF.text];

}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}

@end
