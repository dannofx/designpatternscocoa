//
//  CatCell.h
//  ProxyPattern
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CatAsyncView.h"

@interface CatCell : UITableViewCell
@property (nonatomic,retain)IBOutlet CatAsyncView * catImageView;
@property (nonatomic,retain)IBOutlet UILabel * catNameLabel;

@end
