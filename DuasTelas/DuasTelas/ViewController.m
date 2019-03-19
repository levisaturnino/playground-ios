//
//  ViewController.m
//  DuasTelas
//
//  Created by Levi Saturnino on 01/12/18.
//  Copyright © 2018 Levi Saturnino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)valorDigiadoNaSegundaTela:(nonnull NSString *)valor {
    
    [[self valorDaSegundaTela] setText:valor];

}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DTSegundaTelaViewController *segundaTela = [segue destinationViewController];
    [segundaTela setDelegate: self];
}


@end
