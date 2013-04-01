//
//  SecondViewController.h
//  KVOExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController

@property (nonatomic,retain) IBOutlet UILabel * nameLabel;
@property (nonatomic,retain) NSString * userName;
-(IBAction)nameDidChange:(id)sender;

@end
