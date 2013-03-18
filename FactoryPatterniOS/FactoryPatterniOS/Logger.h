//
//  Logger.h
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    LoggerTypeNone,
    LoggerTypeTimeStamp,
    LoggerTypeSingle,
    LoggerTypeFile,

}LoggerType;

@protocol Logger <NSObject>

-(void)writeLogWithText:(NSString *)logText,...;

@end


@interface Logger : NSObject

+(id<Logger>)loggerWithType:(LoggerType)type;
@end
