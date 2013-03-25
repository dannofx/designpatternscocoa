//
//  RedesSocialesViewController.m
//  SingletonPattern
//
//  Created by Danno on 24/03/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "RedesSocialesViewController.h"

@interface RedesSocialesViewController ()

@end

@implementation RedesSocialesViewController




-(IBAction)facebookDidChange:(id)sender{
    
    UISwitch * plusSwitch=(UISwitch *)sender;
    NSString * estado=(plusSwitch.on)?@"Activado":@"Desactivado";
    NSLog(@"Facebook cambio a %@",estado);
}
-(IBAction)twitterDidChange:(id)sender{
    
    UISwitch * plusSwitch=(UISwitch *)sender;
    NSString * estado=(plusSwitch.on)?@"Activado":@"Desactivado";
    NSLog(@"Twitter cambio a %@",estado);
}
-(IBAction)gplusDidChange:(id)sender{
    
    UISwitch * plusSwitch=(UISwitch *)sender;
    NSString * estado=(plusSwitch.on)?@"Activado":@"Desactivado";
    NSLog(@"GPlus cambio a %@",estado);
    
}
-(IBAction)hideController:(id)sender{

    NSLog(@"Ocultando redes sociales");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
