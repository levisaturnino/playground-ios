//
//  DetailViewController.m
//  SpinCity
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "DetailViewController.h"
#import "Album.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    /*if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
     */
    
    if(self.detailItem){
        self.albumTtitleLabel.text = self.detailItem.title;
        self.artistLabel.text = self.detailItem.artist;
        self.priceLabel.text = [NSString stringWithFormat: @"$%01.2f",self.detailItem.price];
        self.descriptionLabel.text = self.detailItem.description;
        self.locatiorLabel.text = self.detailItem.summary;

        
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
  /*  if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }*/
}


@end
