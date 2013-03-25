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

@implementation Logger



#pragma mark - Abstract Methods
-(void)writeLogWithText:(NSString *)logText,...
{
    //A implementar
}

@end
