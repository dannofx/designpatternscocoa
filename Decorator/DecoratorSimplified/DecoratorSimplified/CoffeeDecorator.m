//
//  CoffeDecorator.m
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CoffeeDecorator.h"
@interface CoffeeDecorator()
{
    id<CoffeeComponent> originalComponent;
}
@end

@implementation CoffeeDecorator
-(id)initWithComponent:(id<CoffeeComponent>)coffeeComponent
{
    self=[super init];
    if(self)
    {
        originalComponent=coffeeComponent;
    }
    return self;
}
-(CGFloat)calculatePrice
{
    //assert para asegurar que no se instancie la clase abstracta
    NSAssert(![self isMemberOfClass:[CoffeeDecorator class]], @"Please don't instantiate from CoffeDecorator directly.");
    return [self componentPrice]+[originalComponent calculatePrice];
}

-(CGFloat)componentPrice
{
    //ESTE METODO ES EL QUE DEBE REALIZAR LAS OPERACIONES.
    //assert para asegurar que no se instancie la clase abstracta
    NSAssert(![self isMemberOfClass:[CoffeeDecorator class]], @"Please don't instantiate from CoffeDecorator directly.");
    return -1.0;
}
@end
