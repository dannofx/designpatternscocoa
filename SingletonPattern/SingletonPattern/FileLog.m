//
//  FileLog.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "FileLog.h"

@implementation FileLog

-(void)writeLogWithText:(NSString *)logText,...
{
    va_list args ;
    va_start(args, logText);
    
    NSString * finalString=[[NSString alloc] initWithFormat:logText arguments:args];;
    [self appendText:finalString];
    
    va_end(args);
}

-(void)dealloc
{
    [self saveChangesAndClose];

}

@end
