//
//  SecondViewController.m
//  KVOExample
//
//  Created by Danno on 01/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
static NSString * keyName=@"userName";

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self addObserver:self
           forKeyPath:keyName
              options:(NSKeyValueObservingOptionOld |
                       NSKeyValueObservingOptionNew)
              context:nil];
    
    
    #warning Leer el comentario
    //La gran desventaja de esta manera de observar un objeto es que no es muy recomendable agregar muchos
    //observadores, en especial aquellos que no tienen una conexion explicita con el objeto a ser observado,
    //en este caso estamos conectando con el controlador de el primer tab, tuvimos que hacer cosas que
    // hacen a nuestro programa mas acoplado (invocar al controlador desde el tabcontroller, cuando nuestro
    //controlador actual no tiene nisiquiera que saber que es parte de un tab controller)
    UIViewController * firstController=[self.tabBarController.viewControllers objectAtIndex:0];
    [self addObserver:firstController
           forKeyPath:keyName
              options:(NSKeyValueObservingOptionOld |
                       NSKeyValueObservingOptionNew)
              context:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)nameDidChange:(id)sender
{
    UITextField * nameField=((UITextField *)sender);
    self.userName=nameField.text;
    [nameField resignFirstResponder];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if([keyPath isEqualToString:keyName])
    {
        id newObject = [change objectForKey:NSKeyValueChangeNewKey];
        NSString * finalString=[NSString stringWithFormat:@"The current user name is: %@ ",newObject];
        self.nameLabel.text=finalString;
        
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
    
    
}

-(void)dealloc
{
    [self removeObserver:self forKeyPath:keyName];
}




@end
