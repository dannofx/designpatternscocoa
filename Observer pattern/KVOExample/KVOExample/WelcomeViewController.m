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

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

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

-(void)dealloc
{
    [self removeObserver:self forKeyPath:keyName];
}


@end
