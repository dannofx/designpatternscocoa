//
//  ViewController.h
//  DelegatePatternExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomSlider.h"

@interface ViewController : UIViewController<CustomSliderDelegate>

@property (nonatomic,retain) IBOutlet CustomSlider * customSlider;
@property (nonatomic,retain) IBOutlet UILabel * currentValueLabel;
@property (nonatomic,retain) IBOutlet UILabel * maximumValueLabel;
@property (nonatomic,retain) IBOutlet UILabel * minimumValueLabel;
@property (nonatomic,retain) IBOutlet UILabel * backgroundColorLabel;


-(IBAction)changeSomeProperties;
@end
