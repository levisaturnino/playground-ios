//
//  DetailViewController.h
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Album.h"
@class Album;

@interface DetailViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *albumTtitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *artistLabel;
@property (weak, nonatomic) IBOutlet UILabel *locatiorLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionLabel;

@property (strong, nonatomic) Album *detailItem;
//@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

