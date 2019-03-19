//
//  MeuPrimeiroViewController.h
//  BemVindo
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MeuPrimeiroViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *meuPrimeiroLabel;
@property (weak, nonatomic) IBOutlet UIButton *olaMundo;
@property (weak, nonatomic) IBOutlet UITextField *nomeTextField;
@property (weak, nonatomic) IBOutlet UITextField *sobrenomeTextField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)slideValueChanged:(id)sender;

@end

NS_ASSUME_NONNULL_END
