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
    LoggerTypeNone=0,
    LoggerTypeTimeStamp=1,
    LoggerTypeSingle=2,
}LoggerType;

@interface Logger : NSObject

+ (Logger *)sharedInstance ;
-(void)writeLogWithText:(NSString *)logText,...;

@end
