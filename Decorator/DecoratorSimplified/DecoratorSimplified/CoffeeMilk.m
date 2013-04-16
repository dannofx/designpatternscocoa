//
//  CoffeMilk.m
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CoffeeMilk.h"

@implementation CoffeeMilk

-(CGFloat)componentPrice
{
    //en este caso solo retornamos el valor, pero aqui se puede realizar cualquier tipo de operacion.
    CGFloat price=1.0;
    NSLog(@"Se agrego el precio de una porcion de leche: %.2f",price);
    return price;
}

@end
