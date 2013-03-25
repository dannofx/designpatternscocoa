//
//  SimpleLog.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "SimpleLog.h"

@implementation SimpleLog

-(void)writeLogWithText:(NSString *)logText arguments:(va_list)args
{
    NSString * finalString=[[NSString alloc] initWithFormat:logText arguments:args];
    fprintf(stdout, "%s\n", [finalString UTF8String]);
}
@end
