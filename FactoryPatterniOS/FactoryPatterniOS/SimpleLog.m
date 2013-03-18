//
//  SimpleLog.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "SimpleLog.h"

@implementation SimpleLog

-(void)writeLogWithText:(NSString *)logText,...
{
    va_list args ;
    va_start(args, logText);
    
    NSString * finalString=[[NSString alloc] initWithFormat:logText arguments:args];
    fprintf(stdout, "%s\n", [finalString UTF8String]);
    
    va_end(args);
}
@end
