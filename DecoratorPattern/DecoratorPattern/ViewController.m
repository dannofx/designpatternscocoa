//
//  ViewController.m
//  DecoratorPattern
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ImageComponent.h"
#import "ImageComponent.h"
#import "ImageScaleFilter.h"
#import "ImageTransformFilter.h"
#import "ImageShadowFilter.h"


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
{
    id<ImageComponent> localImage;
}
-(void)resetImage;
@end

@implementation ViewController
@synthesize decoratorView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self resetImage];
}

-(void)resetImage
{
    localImage=[UIImage imageNamed:@"horse.jpeg"];

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)addShadow:(id)sender
{
    localImage=[[ImageShadowFilter alloc] initWithImageComponent:localImage];

}
-(IBAction)addTransform:(id)sender
{
    localImage=[[ImageTransformFilter alloc] initWithImageComponent:localImage];
}
-(IBAction)addScaleEffect:(id)sender
{
    localImage=[[ImageScaleFilter alloc] initWithImageComponent:localImage];
}
-(IBAction)applyAllEffects:(id)sender
{
    
    if(decoratorView!=nil)
    {
        [decoratorView removeFromSuperview];
        decoratorView=nil;
    }
    decoratorView=[[DecoratorView alloc] initWithFrame:CGRectMake(0, 0,320.0,305.0)];
    [decoratorView setImage:(UIImage *)localImage];
    [self.view addSubview:decoratorView];
    [self resetImage];
}

@end
