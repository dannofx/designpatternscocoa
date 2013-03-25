//
//  FirstViewController.h
//  SingletonPattern
//
//  Created by Danno on 24/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatosGeneralesViewController : UIViewController<UITextFieldDelegate>

-(IBAction)firstNameDidChanged:(id)sender;
-(IBAction)lastNameDidChange:(id)sender;
-(IBAction)ageDidChange:(id)sender;

@end
