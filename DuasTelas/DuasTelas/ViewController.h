//
//  ViewController.h
//  DuasTelas
//
//  Created by Levi Saturnino on 01/12/18.
//  Copyright © 2018 Levi Saturnino. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DTSegundaTelaViewController.h"
@interface ViewController : UIViewController<SegundaTelaDelegate>

@property (strong, nonatomic) IBOutlet UILabel *valorDaSegundaTela;

@end

