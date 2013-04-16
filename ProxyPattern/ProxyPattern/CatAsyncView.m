//
//  CatAsyncView.m
//  ProxyPattern
//
//  Created by Danno on 15/04/13.
//  Copyright (c) 2013 Danno. All rights reserved.
//

#import "CatAsyncView.h"

@interface CatAsyncView()
{
    Cat * currentCat;
}
-(void)downloadCatImage:(NSDictionary *)catInfo;

@end

@implementation CatAsyncView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)updateWithCat:(Cat *)cat
{
    currentCat=cat;
    UIImage * savedImage=[[UIImage alloc] initWithContentsOfFile:cat.catLocalPath];
    
    if(savedImage==nil)
    {
        NSDictionary * catInfo=[NSDictionary dictionaryWithObjectsAndKeys:cat.catAddress,@"address",cat.catLocalPath,@"localpath", nil];
        [self performSelectorInBackground:@selector(downloadCatImage:) withObject:catInfo];
        self.image=[UIImage imageNamed:@"wait.png"];
        
    }
    else
        self.image=savedImage;
}

-(void)downloadCatImage:(NSDictionary *)catInfo
{
#warning Este ejemplo no tiene validacion para accesos concurrentes (multihilo) ni toma en cuenta que una descarga podria hacerse una o mas veces.
    NSString * catAddress=[catInfo objectForKey:@"address"];
    NSString * catLocalPath=[catInfo objectForKey:@"localpath"];
    
    
    NSData *downloadedData=[NSData dataWithContentsOfURL:[NSURL URLWithString:catAddress]];
    [downloadedData writeToFile:catLocalPath atomically:YES];
    
    if([currentCat.catAddress isEqualToString:catAddress])
    {
        UIImage * downloadedImage = [UIImage imageWithData:downloadedData];
        self.image=downloadedImage;
    }

}

@end
