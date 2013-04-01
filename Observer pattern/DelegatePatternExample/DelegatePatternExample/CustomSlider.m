//
//  CustomSlider.m
//  DelegatePatternExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CustomSlider.h"

@implementation CustomSlider
@synthesize delegate;



-(void)setValue:(float)value animated:(BOOL)animated
{
    [super setValue:value animated:animated];
    if(self.delegate)
        [self.delegate customSliderDidChangeValue:value];
}
-(void)setValue:(float)value
{
    [super setValue:value];
    if(self.delegate)
        [self.delegate customSliderDidChangeValue:value];
}

-(void)setMaximumValue:(float)maximumValue
{
    [super setMaximumValue:maximumValue];
    if(self.delegate)
        [self.delegate customSliderDidChangeMaximumValue:maximumValue];
}

-(void)setMinimumValue:(float)minimumValue
{
    [super setMinimumValue:minimumValue];
    if(self.delegate)
        [self.delegate customSliderDidChangeMinimumValue:minimumValue];
}

-(void)setBackgroundColor:(UIColor *)backgroundColor
{
    [super setBackgroundColor:backgroundColor];
    
    if(self.delegate)
        [self.delegate customSliderDidChangeBackgroundColor:backgroundColor];
}
@end
