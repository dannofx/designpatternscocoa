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
#import "FileLog.h"

@implementation Logger


+(id<Logger>)loggerWithType:(LoggerType)type
{
    id<Logger> logger;
    switch (type) {
        case LoggerTypeFile:
            logger=[[FileLog alloc] init];
            break;
        case LoggerTypeTimeStamp:
            logger=[[TimeStampLog alloc] init];
            break;
        case LoggerTypeSingle:
            logger=[[SimpleLog alloc] init];
            break;
        case LoggerTypeNone:
        default:
            logger=[[NoLog alloc] init];
            break;
    }
    return logger;
}

@end
