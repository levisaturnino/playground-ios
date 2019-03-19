//
//  AlbumDataController.m
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "AlbumDataController.h"
#import "Album.h"

@interface AlbumDataController()

@property (nonatomic,readonly) NSMutableArray  *albumList;

@end

@implementation AlbumDataController

-(id)init{
    self = [super init];
    
    if(self){
        _albumList = [[NSMutableArray alloc] init];
        [self initializeDefaultAlbuns];
        return self;
    }
    return nil;
}

- (void) initializeDefaultAlbuns{
    
    // [self addAlbumWithTile:@"Infected Splinter" artist:@"Boppin' Beavers" summary:@"Awesome album with a hint of Oak." price:9.99f locationInStore:@"Section F"];
    //  [self addAlbumWithTile:@"Hairy Eyeball"     artist:@"Cyclops"         summary:@"A 20/20 retrospective on Classic Rock." price:8.99f locationInStore:@"Discount Rack"];
    //  [self addAlbumWithTile:@"Squish" artist:@"the Bugz" summary:@"Not yout average fly by night band" price:8.99f locationInStore:@"Section A"];
    //  [self addAlbumWithTile:@"Acid Fog" artist:@"Josh and Chuck" summary:@"You should know this stuff." price:11.99f locationInStore:@"Section 9 3/4"];
    NSString *pathToAlbumsPlist = [[NSBundle mainBundle] pathForResource:@"AlbumArray" ofType:@"plist"];
    NSArray *defaultAlbumPlist = [NSArray arrayWithContentsOfFile:pathToAlbumsPlist];
    for (NSDictionary *albumInfo in defaultAlbumPlist){
        [self addAlbumWithTile:albumInfo[@"title"]
                        artist:albumInfo[@"artist"]
                       summary:albumInfo[@"summary"]
                         price:[albumInfo[@"price"] floatValue]
               locationInStore:albumInfo[@"locationInStore"]];
    }
}

- (NSInteger)albumCount{
    return [self.albumList count];
}

- (void)addAlbumWithTile:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore{
    
    Album *newAlbum =[[Album alloc] initWithTitle:title artist:artist summary:summary price:price locationInStore:locationInStore];
    
    [self.albumList addObject:newAlbum];
}

- (Album *)albumAtIndex:(NSUInteger)index{
    return [self.albumList objectAtIndex:index];
}
@end
