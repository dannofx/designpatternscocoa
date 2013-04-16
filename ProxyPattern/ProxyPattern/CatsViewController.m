//
//  CatsViewController.m
//  ProxyPattern
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CatsViewController.h"
#import "Cat.h"
#import "CatCell.h"

@interface CatsViewController ()
{
    NSArray * catsArray;
}

@end

@implementation CatsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)cleanTemDirectory
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSError *error;
    NSString * saveDirectory=NSTemporaryDirectory();
    NSArray *cacheFiles = [fileManager contentsOfDirectoryAtPath:saveDirectory error:&error];
    for (NSString *file in cacheFiles) {
        error = nil;
        [fileManager removeItemAtPath:[saveDirectory stringByAppendingPathComponent:file] error:&error];
        /* handle error */
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self cleanTemDirectory];
    NSMutableArray * mutableCats=[[NSMutableArray alloc] init];
    
    Cat * cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/100";
    cat.catName=@"Kitty";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/101/100";
    cat.catName=@"Mr cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/102/100";
    cat.catName=@"Cat woman";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/103/100";
    cat.catName=@"Lui Cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/104/100";
    cat.catName=@"Becci";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/105/100";
    cat.catName=@"Catimon";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/106/100";
    cat.catName=@"Cawcat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/100";
    cat.catName=@"kiki";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/107/100";
    cat.catName=@"Pelos";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/108/100";
    cat.catName=@"Rocker cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/109/100";
    cat.catName=@"Rocket cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/101";
    cat.catName=@"Vampicat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/102";
    cat.catName=@"Go Go cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/103";
    cat.catName=@"Semicat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/104";
    cat.catName=@"Mighty cat ever";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/105";
    cat.catName=@"Dale duro cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/106";
    cat.catName=@"Sleepy";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/107";
    cat.catName=@"Badass cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/108";
    cat.catName=@"Kitty 2";
    [mutableCats addObject:cat];
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/100/109";
    cat.catName=@"Kitty 3";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/101/101";
    cat.catName=@"Kitty 4";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/102/102";
    cat.catName=@"Kitty 5";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/103/103";
    cat.catName=@"Mr cat 2";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/104/104";
    cat.catName=@"Mr cat 3";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/105/105";
    cat.catName=@"Mr cat 4";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/106/106";
    cat.catName=@"Mr cat 5";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/107/109";
    cat.catName=@"Goku cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/108/108";
    cat.catName=@"Leono cat";
    [mutableCats addObject:cat];
    
    cat=[[Cat alloc] init];
    cat.catAddress=@"http://placekitten.com/109/109";
    cat.catName=@"Neo cat";
    [mutableCats addObject:cat];
    catsArray=[[NSArray alloc] initWithArray:mutableCats];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return  [catsArray count];;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CatCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Cat * currentCat=[catsArray objectAtIndex:indexPath.row];
    cell.catNameLabel.text=currentCat.catName;
    
    [cell.catImageView updateWithCat:currentCat];
    
    // Configure the cell...
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
