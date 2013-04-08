

#import "ImageShadowFilter.h"


@implementation ImageShadowFilter

- (void) apply
{
    
  CGContextRef context = UIGraphicsGetCurrentContext();
  // set up shadow
  CGSize offset = CGSizeMake (-25,  15);
  CGContextSetShadow(context, offset, 20.0);
}

@end
