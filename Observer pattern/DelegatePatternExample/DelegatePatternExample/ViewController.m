//
//  ViewController.m
//  DelegatePatternExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize customSlider;
@synthesize currentValueLabel;
@synthesize maximumValueLabel;
@synthesize minimumValueLabel;
@synthesize backgroundColorLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.customSlider.delegate=self;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    

}


-(IBAction)changeSomeProperties
{
    customSlider.minimumValue=10.0;
    customSlider.maximumValue= 167.0;
    customSlider.backgroundColor=[UIColor grayColor];
}


#pragma mark - Custom slider delegate
-(void)customSliderDidChangeValue:(CGFloat)value
{
    self.currentValueLabel.text=[NSString stringWithFormat:@"%.2f",value];
}
-(void)customSliderDidChangeMinimumValue:(CGFloat)minimumValue
{
    self.minimumValueLabel.text=[NSString stringWithFormat:@"%.2f",minimumValue];
}
-(void)customSliderDidChangeMaximumValue:(CGFloat)maximumValue
{
    self.maximumValueLabel.text=[NSString stringWithFormat:@"%.2f",maximumValue];
}
-(void)customSliderDidChangeBackgroundColor:(UIColor *)color
{
    CGFloat redValue;
    CGFloat greenValue;
    CGFloat blueValue;
    CGFloat alphaValue;
    [color getRed:&redValue green:&greenValue blue:&blueValue alpha:&alphaValue];
    self.currentValueLabel.text=[NSString stringWithFormat:@"%.2f,%.2f,%.2f,%.2f",redValue,greenValue,blueValue,alphaValue];

}

@end
