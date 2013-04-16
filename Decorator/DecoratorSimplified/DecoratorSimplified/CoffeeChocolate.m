//
//  CoffeChocolate.m
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CoffeeChocolate.h"

@implementation CoffeeChocolate

-(CGFloat)componentPrice
{
    //en este caso solo retornamos el valor, pero aqui se puede realizar cualquier tipo de operacion.
    CGFloat price=0.9;
    NSLog(@"Se agrego el precio de una porcion de chocolate: %.2f",price);
    return price;
}

@end
