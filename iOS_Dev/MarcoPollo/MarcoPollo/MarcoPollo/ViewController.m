//
//  ViewController.m
//  MarcoPollo
//
//  Created by Levi Saturnino on 16/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "ViewController.h"
#import "Social/Social.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.twitterTextView.font = [UIFont fontWithName:@"Helvetica" size:15.f];
}

- (IBAction)postItButtonPressed:(id)sender{
    NSString *buttonTitle = [sender titleForState:UIControlStateNormal];

    SLComposeViewController *composer = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeTwitter];
    
    [composer setInitialText:self.twitterTextView.text];
    
    NSLog(@"Post It button was pressed: %@",self.twitterTextView.text);

    [self presentViewController:composer animated:YES completion:nil];
   // [self presenteViewController: composer animated:YES completion: nil];
}


@end
