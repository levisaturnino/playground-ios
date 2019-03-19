//
//  Album.h
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Album :NSObject

@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *artist;
@property (nonatomic,copy) NSString *summary;
@property (nonatomic,copy) NSString *locationInStore;

@property (nonatomic,assign) float *price;

-(id)initWithTitle:(NSString *)title artist:(NSString *)artist summary:(NSString *)summary price:(float)price locationInStore:(NSString *)locationInStore;

@end

