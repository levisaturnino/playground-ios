//
//  AlbumDataController.h
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Album;

@interface AlbumDataController : NSObject

- (NSInteger) albumCount;

- (Album *) albumAtIndex:(NSUInteger) index;

-(void)addAlbumWithTile:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore;
@end


