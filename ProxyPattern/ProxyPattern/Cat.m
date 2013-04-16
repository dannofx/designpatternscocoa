//
//  Cat.m
//  ProxyPattern
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "Cat.h"

@implementation Cat
@synthesize catName=_catName;
@synthesize catAddress=_catAddress;
@synthesize catLocalPath=_catLocalPath;


-(void)setCatName:(NSString *)catName
{
    _catName=catName;
    NSString *documentsDirectory = NSTemporaryDirectory();
    NSString *localFilePath = [documentsDirectory stringByAppendingPathComponent:catName];
    self.catLocalPath=localFilePath;
    
}
@end
