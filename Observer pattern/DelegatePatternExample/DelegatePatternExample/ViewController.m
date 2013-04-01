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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

@end
