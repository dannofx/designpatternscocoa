//
//  CustomSlider.h
//  DelegatePatternExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomSliderDelegate <NSObject>

-(void)customSliderDidChangeValue:(CGFloat)value;
-(void)customSliderDidChangeMinimumValue:(CGFloat)minimumValue;
-(void)customSliderDidChangeMaximumValue:(CGFloat)maximumValue;
@optional
-(void)customSliderDidChangeBackgroundColor:(UIColor *)color;
@end

@interface CustomSlider : UISlider

@property (assign) id<CustomSliderDelegate> delegate;



@end
