//
//  ViewController.h
//  MarcoPollo
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *postItButtonPressed;
@property (weak, nonatomic) IBOutlet UITextView *twitterTextView;
- (IBAction)postItButtonPressed:(id)sender;


@end

