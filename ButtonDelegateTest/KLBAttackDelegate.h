//
//  KLBAttackDelegate.h
//  ButtonDelegateTest
//
//  Created by Chase Gosingtian on 8/28/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol KLBAttackDelegate <NSObject>
- (void) attackWillSucceed;
- (void) attackDidSucceed;

@end
