//
//  CatAsyncView.h
//  ProxyPattern
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cat.h"

@interface CatAsyncView : UIImageView
-(void)updateWithCat:(Cat *)cat;
@end
