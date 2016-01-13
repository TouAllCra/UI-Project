//
//  PushView.m
//  UI_03_01
//
//  Created by ibokan on 16/1/13.
//  Copyright © 2016年 ibokan. All rights reserved.
//

#import "PushView.h"
#import <UIKit/UIKit.h>

@implementation PushView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.pushButton setTitle:@"push" forState:UIControlStateNormal];
        [self.pushButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        self.pushButton.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:self.pushButton];
        
        
        NSLayoutConstraint *constraintWidth = [NSLayoutConstraint constraintWithItem:self.pushButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
        NSLayoutConstraint *constraintHeight = [NSLayoutConstraint constraintWithItem:self.pushButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
        NSLayoutConstraint *constraintX = [NSLayoutConstraint constraintWithItem:self.pushButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
        NSLayoutConstraint *constraintY = [NSLayoutConstraint constraintWithItem:self.pushButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
        
        [self addConstraint:constraintHeight];
        [self addConstraint:constraintWidth];
        [self addConstraint:constraintX];
        [self addConstraint:constraintY];
    }
    return self;
}


@end
