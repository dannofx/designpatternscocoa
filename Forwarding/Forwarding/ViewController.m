//
//  ViewController.m
//  Forwarding
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"
#import "Nota.h"
#import "Periodico.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Datos obtenidos de NOTA:");
    Nota * nota=[[Nota alloc] init];
    NSLog(@"Titulo: %@",nota.titulo);
    NSLog(@"Autor: %@",nota.autor);
    
    NSLog(@"Datos obtenidos de DIARIO:");
    Periodico * periodico=[[Periodico alloc] init];
    NSLog(@"Titulo: %@",periodico.titulo);
    NSLog(@"Autor: %@",periodico.autor);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
