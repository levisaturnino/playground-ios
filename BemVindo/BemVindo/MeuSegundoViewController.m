//
//  MeuSegundoViewController.m
//  BemVindo
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "MeuSegundoViewController.h"

@interface MeuSegundoViewController ()

@end

@implementation MeuSegundoViewController
@synthesize msg;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Segundo Controller";
    UIBarButtonItem *btVoltar = [[UIBarButtonItem alloc] initWithTitle:@"Voltar" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.backBarButtonItem = btVoltar;

   label.text = msg;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)voltar:(id)sender {
   // [self dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
