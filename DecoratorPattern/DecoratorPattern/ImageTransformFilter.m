

#import "ImageTransformFilter.h"

@implementation ImageTransformFilter
{

}

- (void) apply
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(-M_PI / 4.0);
    CGAffineTransform translateTransform = CGAffineTransformMakeTranslation(-25.0,
                                                                            30.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotateTransform, translateTransform);
    CGContextConcatCTM(context, finalTransform);

}

@end
