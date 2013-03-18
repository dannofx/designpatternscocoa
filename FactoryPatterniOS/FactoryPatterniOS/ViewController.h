//
//  ViewController.h
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>



-(IBAction)cambioTipoLog:(id)sender;
-(IBAction)comienzaEdicionNombre:(id)sender;
-(IBAction)comienzaEdicionApellido:(id)sender;
-(IBAction)cambioFechaNacimiento:(id)sender;
-(IBAction)terminaEdicionNombre:(id)sender;
-(IBAction)terminaEdicionApellido:(id)sender;


@end
