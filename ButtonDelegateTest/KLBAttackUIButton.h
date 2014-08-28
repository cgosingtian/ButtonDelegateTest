//
//  KLBAttackUIButton.h
//  ButtonDelegateTest
//
//  Created by Chase Gosingtian on 8/28/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KLBAttackDelegate.h"

@interface KLBAttackUIButton : UIView
@property (strong, nonatomic) IBOutlet UIButton *attackButton;
@property (weak, nonatomic) id<KLBAttackDelegate> delegate;

- (IBAction)buttonTapped:(id)sender;

@end
