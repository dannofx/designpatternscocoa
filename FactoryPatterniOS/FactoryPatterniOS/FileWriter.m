//
//  FileWriter.m
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "FileWriter.h"

@interface FileWriter ()
{
    NSFileHandle *fileHandler;
    NSString *logPath ;
}

@end
@implementation FileWriter

-(id)init
{
    self=[super init];
    if(self)
    {
        NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDir = [documentPaths objectAtIndex:0];
        logPath = [[NSString alloc] initWithFormat:@"%@",[documentsDir stringByAppendingPathComponent:@"log.txt"]];
        if(![[NSFileManager defaultManager] fileExistsAtPath:logPath])
        {
            [[NSFileManager defaultManager] createFileAtPath:logPath contents:nil attributes:nil];
        }
        
        fileHandler = [NSFileHandle fileHandleForUpdatingAtPath:logPath];
        [fileHandler seekToEndOfFile];
        
    }
    return self;
}

-(void)appendText:(NSString *)text
{
    if(fileHandler==nil)
    {
        NSLog(@"El archivo ya fue cerrado");
        return ;
    }
    
    NSString * textToWrite=[text stringByAppendingString:@"\n"];
    
    [fileHandler writeData:[textToWrite dataUsingEncoding:NSUTF8StringEncoding]];

}

-(void)saveChangesAndClose
{
    NSLog(@"Guardado en: %@",logPath);
    [fileHandler closeFile];
    fileHandler=nil;

}

@end
