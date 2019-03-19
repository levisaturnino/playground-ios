//
//  MeuSegundoViewController.h
//  BemVindo
//
//  Created by Levi Saturnino on 17/03/19.
//  Copyright © 2019 levisaturnino. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MeuSegundoViewController : UIViewController{
    IBOutlet UILabel *label;
    NSString *msg;
}
- (IBAction)voltar:(id)sender;
@property(nonatomic,strong) NSString *msg;
@end

NS_ASSUME_NONNULL_END
