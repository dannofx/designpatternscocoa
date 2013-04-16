//
//  ImageScaleFilter.m
//  DecoratorPattern
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ImageScaleFilter.h"

@implementation ImageScaleFilter

- (void) apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(context,0.6, 0.6);
}
@end
