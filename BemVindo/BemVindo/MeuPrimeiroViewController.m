//
//  MeuPrimeiroViewController.m
//  BemVindo
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import "MeuPrimeiroViewController.h"
#import "MeuSegundoViewController.h"
@interface MeuPrimeiroViewController ()

@end

@implementation MeuPrimeiroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIImage *image = [UIImage imageNamed:@"ferrari_ff.png"];
    
    _imageView.image = image;
    self.meuPrimeiroLabel.text = @"Tela iniciada com sucesso!";
    _nomeTextField.delegate = self;
    _sobrenomeTextField.delegate = self;
    self.title = @"Primeiro Controller";
}

- (IBAction)olaMundo:(id)sender{
    
    NSString *s  = @"Ola ";
    
    if([_nomeTextField.text isEqualToString:@""] ||
       [_sobrenomeTextField.text isEqualToString:@""]){
        
        UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Erro" message:@"Digite todos os campos" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        
        [a show];
        return;
    }
    
    s = [s stringByAppendingString:_nomeTextField.text];
    
    s = [s stringByAppendingString:@" "];
    
    s = [s stringByAppendingString:_sobrenomeTextField.text];
    
    _meuPrimeiroLabel.text = s;
    
    [_nomeTextField resignFirstResponder];
    [_sobrenomeTextField resignFirstResponder];
    
    
    MeuSegundoViewController *segundo = [[MeuSegundoViewController alloc] init];
    
     segundo.msg = s;
    //segundo.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
   // [self presentViewController:segundo animated:YES completion:nil];
    [self.navigationController pushViewController:segundo animated:YES];

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_nomeTextField resignFirstResponder];
    [_sobrenomeTextField resignFirstResponder];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if(textField == _nomeTextField){
        [_sobrenomeTextField becomeFirstResponder];
        return YES;
    }else
        if(textField == _sobrenomeTextField){
            [self olaMundo:textField];
            return YES;
        }
    return NO;
}

- (IBAction)slideValueChanged:(id)sender {
    
    UISlider *slider = sender;
    
    _imageView.alpha = [slider value];
}
@end
