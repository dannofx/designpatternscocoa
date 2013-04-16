//
//  Periodico.m
//  Forwarding
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "Periodico.h"
#import "Nota.h"

@interface Periodico()
{
    Nota * notaPrincipal;
}
@end
@implementation Periodico
@synthesize fecha;
@synthesize nombre;
@dynamic titulo;
@dynamic autor;

-(id)init
{
    self=[super init];
    if(self)
    {
        self.fecha=@"15/04/13";
        self.nombre=@"El codigo diario";
        notaPrincipal=[[Nota alloc] init];
    }
    return self;
}

-(id)forwardingTargetForSelector:(SEL)aSelector
{
    NSString *selectorName = NSStringFromSelector(aSelector);
    
    if ([selectorName hasPrefix:@"setTitulo"]
        ||[selectorName hasPrefix:@"setAutor"]
        ||[selectorName hasPrefix:@"autor"]
        ||[selectorName hasPrefix:@"titulo"]
        )
    {
        return notaPrincipal;
    }
    
    return self;
}

@end
