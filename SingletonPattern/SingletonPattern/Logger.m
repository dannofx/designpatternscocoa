//
//  Logger.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "Logger.h"
#import "TimeStampLog.h"
#import "SimpleLog.h"
#import "NoLog.h"

@interface Logger()

+ (id)hiddenAlloc ;

@end

@implementation Logger
static Logger *unicInstance = nil;

#pragma mark - Singleton method
+ (Logger *)sharedInstance {
    
    if (!unicInstance)
    {
        @synchronized(self)
        {
            NSBundle *mainBundle = [NSBundle mainBundle];
            NSDictionary *info = [mainBundle infoDictionary];
            NSString *className = [info objectForKey:@"LoggerType"];
            unicInstance = [[NSClassFromString(className) hiddenAlloc] init];
        }
    }
     return unicInstance;//Si se utiliza initialize basta con que este metodo retorne la instancia unica.
}

#pragma mark - Singleton validations
+ (id)hiddenAlloc {
    return [super alloc];
}
+ (id)alloc {
    NSLog(@"%@: use +sharedInstance instead of +alloc", [[self class] description]);
    return nil;
}
+ (id)new {
    return [self alloc];
}

- (id)copyWithZone:(NSZone *)zone
{
    NSLog(@"Logger: attempt to -copy may be a bug.");
    
    return self;
}
- (id)mutableCopyWithZone:(NSZone *)zone {
    
    return [self copyWithZone:zone];
}

#pragma mark - Abstract Methods
-(void)writeLogWithText:(NSString *)logText,...
{
    //A implementar
}

//Alternativa de metodo singleton, es comun usarlo porque initialize es un metodo que se
//llama una sola vez por clase en un contexto seguro en cuanto a multihilo.
//+ (void)initialize
//{
//    static BOOL initialized = NO;
//    if(!initialized)
//    {
//        initialized = YES;
//        NSBundle *mainBundle = [NSBundle mainBundle];
//        NSDictionary *info = [mainBundle infoDictionary];
//        NSString *className = [info objectForKey:@"LoggerType"];
//        unicInstance = [[NSClassFromString(className) hiddenAlloc] init];
//    }
//}
@end
