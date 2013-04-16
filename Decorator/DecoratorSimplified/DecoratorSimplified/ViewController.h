//
//  ViewController.h
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,retain) IBOutlet UILabel * priceLabel;

-(IBAction)addMilk:(id)sender;
-(IBAction)addChocolate:(id)sender;
-(IBAction)addSugar:(id)sender;
-(IBAction)addCinnamon:(id)sender;
-(IBAction)addCream:(id)sender;
-(IBAction)calculateCoffeePrice:(id)sender;

@end
