
#import <Foundation/Foundation.h>
#import "ImageComponent.h"
#import "UIImage+ImageComponent.h"

@interface ImageFilter : NSObject <ImageComponent>
{
  @private
  id <ImageComponent> component_;
}

@property (nonatomic, retain) id <ImageComponent> component;

- (void) apply;
- (id) initWithImageComponent:(id <ImageComponent>) component;
- (id) forwardingTargetForSelector:(SEL)aSelector;



@end
