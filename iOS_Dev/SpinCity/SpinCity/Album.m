//
//  Album.m
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "Album.h"

@interface Album ()

@end

@implementation Album


-(id)initWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString*)locationInStore{
    self = [super init];
    
    if(self){
        _title          = title;
        _artist        = artist;
        _summary        = summary;
        _price           = &price;
        _locationInStore = locationInStore;
        return self;
    }
    return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
