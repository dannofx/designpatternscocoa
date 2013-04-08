//
//  ViewController.h
//  DecoratorPattern
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DecoratorView.h"
@interface ViewController : UIViewController


@property(nonatomic,retain)  DecoratorView * decoratorView;

-(IBAction)addShadow:(id)sender;
-(IBAction)addTransform:(id)sender;
-(IBAction)addScaleEffect:(id)sender;
-(IBAction)applyAllEffects:(id)sender;

@end
