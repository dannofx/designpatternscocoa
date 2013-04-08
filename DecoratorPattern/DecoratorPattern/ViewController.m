//
//  ViewController.m
//  DecoratorPattern
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"

/*
 
 //SNIPPETS
 
 //Set shadow
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGSize offset = CGSizeMake (-25,  15);
 CGContextSetShadow(context, offset, 20.0);
 
 //Set transform
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
 CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-image.size.width / 2.0,
 image.size.height / 8.0);
 CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
 CGContextConcatCTM(context, finalTransform);
 
 //Set scale
 CGContextRef context = UIGraphicsGetCurrentContext();
 CGContextScaleCTM(context, 1.2, 1.2);
 
 
 */

@interface ViewController ()

@end

@implementation ViewController
@synthesize imageView;

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
-(IBAction)addShadow:(id)sender
{

}
-(IBAction)addTransform:(id)sender
{

}
-(IBAction)applyAllEffects:(id)sender
{

}

@end
