//
//  SecondViewController.h
//  SingletonPattern
//
//  Created by Danno on 24/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContactoViewController : UIViewController <UITextFieldDelegate>

-(IBAction)emailDidChanged:(id)sender;
-(IBAction)addressDidChange:(id)sender;
-(IBAction)phoneNumberDidChange:(id)sender;
@end
