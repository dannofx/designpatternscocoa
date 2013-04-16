//
//  CoffeClass.m
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "Coffee.h"

@implementation Coffee

-(CGFloat)calculatePrice
{
    CGFloat price =4.0;
    NSLog(@"Calcula el precio de un cafe: %.2f",price);
    return price;
}
@end
