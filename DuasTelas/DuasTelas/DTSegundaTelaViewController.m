//
//  DTSegundaTelaViewController.m
//  DuasTelas
//
//  Created by Levi Saturnino on 01/12/18.
//  Copyright © 2018 Levi Saturnino. All rights reserved.
//

#import "DTSegundaTelaViewController.h"

@interface DTSegundaTelaViewController ()

@end

@implementation DTSegundaTelaViewController
@synthesize textoDigitado, delegate;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction) toqueFechar:(id)sender{
    [[self delegate] valorDigitadoNaSegundaTela:[[self textoDigitado] text]];
    [self dismissModalViewControllerAnimated:YES];
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
