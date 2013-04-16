//
//  ViewController.m
//  DecoratorSimplified
//
//  Created by Danno on 08/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "ViewController.h"
#import "CoffeComponent.h"
#import "CoffeeMilk.h"
#import "CoffeeChocolate.h"
#import "CoffeeSugar.h"
#import "CoffeeCinnamon.h"
#import "CoffeeCream.h"
#import "Coffee.h"

@interface ViewController ()
{
    id<CoffeeComponent>coffeeComponent;
    
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self resetCoffee];
}

-(void)resetCoffee
{
    coffeeComponent=[[Coffee alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addMilk:(id)sender
{
    NSLog(@"Se agregara LECHE a su cafe.");
    coffeeComponent=[[CoffeeMilk alloc] initWithComponent:coffeeComponent];

}
-(IBAction)addChocolate:(id)sender
{
    NSLog(@"Se agregara CHOCOLATE a su cafe.");
    coffeeComponent=[[CoffeeChocolate alloc] initWithComponent:coffeeComponent];

}
-(IBAction)addSugar:(id)sender
{
    NSLog(@"Se agregara AZUCAR a su cafe.");
    coffeeComponent=[[CoffeeSugar alloc] initWithComponent:coffeeComponent];

}
-(IBAction)addCinnamon:(id)sender
{
    NSLog(@"Se agregara CANELA a su cafe.");
    coffeeComponent=[[CoffeeCinnamon alloc] initWithComponent:coffeeComponent];

}
-(IBAction)addCream:(id)sender
{
    NSLog(@"Se agregara CREMA a su cafe.");
    coffeeComponent=[[CoffeeCream alloc] initWithComponent:coffeeComponent];

}
-(IBAction)calculateCoffeePrice:(id)sender
{
    NSLog(@"=========================================");
    CGFloat totalPrice=[coffeeComponent calculatePrice];
    NSLog(@"TOTAL %.2f",totalPrice);
    self.priceLabel.text=[NSString stringWithFormat:@"$%.2f",totalPrice];
    [self resetCoffee];
}

@end
