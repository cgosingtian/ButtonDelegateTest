//
//  KLBBattleViewController.m
//  ButtonDelegateTest
//
//  Created by Chase Gosingtian on 8/28/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import "KLBBattleViewController.h"
#import "KLBAttackUIButton.h"
#import "KLBAttackDelegate.h"

@interface KLBBattleViewController () <KLBAttackDelegate>

@property (strong, nonatomic) KLBAttackUIButton *button;

@end

@implementation KLBBattleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _button = [[KLBAttackUIButton alloc] initWithFrame:CGRectMake(10, 110, 90, 90)];
    _button.delegate = self;
    [self.view addSubview:_button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - KLBAttackDelegate Protocol
- (void) attackWillSucceed {
    NSLog(@"attack will succeed");
}

- (void) attackDidSucceed {
    NSLog(@"attack did succeed");
}

@end
