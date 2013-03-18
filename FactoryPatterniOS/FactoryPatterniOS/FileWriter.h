//
//  FileWriter.h
//  FactoryPatterniOS
//
//  Created by Danno on 18/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileWriter : NSObject
-(void)appendText:(NSString *)text;
-(void)saveChangesAndClose;
@end
