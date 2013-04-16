//
//  CoffeDecorator.h
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoffeComponent.h"

@interface CoffeeDecorator : NSObject<CoffeeComponent>

-(id)initWithComponent:(id<CoffeeComponent>)coffe;
-(CGFloat)componentPrice;

@end
