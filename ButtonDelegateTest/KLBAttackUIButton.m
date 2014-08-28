//
//  KLBAttackUIButton.m
//  ButtonDelegateTest
//
//  Created by Chase Gosingtian on 8/28/14.
//  Copyright (c) 2014 KLab Cyscorpions, Inc. All rights reserved.
//

#import "KLBAttackUIButton.h"

@implementation KLBAttackUIButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Load the views in our Attack Button Interface NIB
        NSArray *subViews = [[NSBundle mainBundle] loadNibNamed:@"KLBAttackUIButton" owner:self options:nil];
        // Add the view to this object's view
        [self addSubview:subViews[0]];
    }
    return self;
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"button tapped");
    if ([self.delegate respondsToSelector:@selector(attackWillSucceed)]) {
        [self.delegate attackWillSucceed];
    }
    if ([self.delegate respondsToSelector:@selector(attackDidSucceed)]) {
        [self.delegate attackDidSucceed];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
