//
//  FirstViewController.m
//  KVOExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController
@synthesize nameTextView;

static NSString * keyName=@"userName";
static NSString * notificationName=@"userName";

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Implementacion con notification center
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(updateMyMessageLabel:) name:notificationName object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Implementacion KVO
/*
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if([keyPath isEqualToString:keyName])
    {
        id newObject = [change objectForKey:NSKeyValueChangeNewKey];
        NSString * finalString=[NSString stringWithFormat:@"Hello %@, this is a welcome message for you. ",newObject];
        self.nameTextView.text=finalString;
        
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
    
}
*/

-(void)updateMyMessageLabel:(NSNotification *)notification
{
    NSString * nameString=[notification.userInfo objectForKey:keyName];
    NSString * finalString=[NSString stringWithFormat:@"Hello %@, this is a welcome message for you. ",nameString];
    self.nameTextView.text=finalString;

}

-(void)dealloc
{
    //Implementacion con notification center
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    // Implementacion con KVO
   // [self removeObserver:self forKeyPath:keyName];
}


@end
