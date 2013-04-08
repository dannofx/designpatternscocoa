
#import "ImageFilter.h"


@implementation ImageFilter

@synthesize component=component_;


- (id) initWithImageComponent:(id <ImageComponent>) component
{
  if (self = [super init])
  {
    // save an ImageComponent
    [self setComponent:component];
  }
  
  return self;
}

- (void) apply
{
  // should be overridden by subclasses
  // to apply real filters
}

- (id) forwardingTargetForSelector:(SEL)aSelector
{
  NSString *selectorName = NSStringFromSelector(aSelector);
  if ([selectorName hasPrefix:@"draw"])
  {
    [self apply];
  }
  
  return component_;
}




@end
