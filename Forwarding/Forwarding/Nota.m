//
//  Nota.m
//  Forwarding
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "Nota.h"

@implementation Nota
@synthesize titulo;
@synthesize autor;

-(id)init
{
    self=[super init];
    if(self)
    {
        self.titulo=@"Chavos aprenden forwarding";
        self.autor=@"Desco Nocido";
    }
    return self;
}

@end
