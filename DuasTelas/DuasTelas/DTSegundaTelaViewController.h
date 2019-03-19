//
//  DTSegundaTelaViewController.h
//  DuasTelas
//
//  Created by Levi Saturnino on 01/12/18.
//  Copyright © 2018 Levi Saturnino. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SegundaTelaDelegate
- (void)valorDigitadoNaSegundaTela:(NSString *)valor;
@end

@interface DTSegundaTelaViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *textoDigitado;
@property (assign) id <SegundaTelaDelegate> delegate;
- (IBAction) toqueFechar:(id)sender;
@end

NS_ASSUME_NONNULL_END
