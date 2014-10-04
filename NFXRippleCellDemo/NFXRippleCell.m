//
//  NFXRippleCell.m
//  NFXRippleCellDemo
//
//  Created by Tomoya_Hirano on 2014/07/14.
//  Copyright (c) 2014年 Tomoya_Hirano. All rights reserved.
//

#import "NFXRippleCell.h"

@interface NFXRippleCell (){
    UIView*RippleView;
}
@end

@implementation NFXRippleCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        RippleView = [[UIView alloc] initWithFrame:(CGRect){0,0,300,300}];
        RippleView.backgroundColor = [[UIColor orangeColor] colorWithAlphaComponent:0.3];
        RippleView.layer.cornerRadius = 150;
        RippleView.layer.masksToBounds=true;
        RippleView.alpha=0;
        self.contentView.superview.clipsToBounds=true;
    }
    return self;
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    [UIView animateWithDuration:0.7
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         RippleView.transform = CGAffineTransformMakeScale(1,1);
                         RippleView.alpha=0;
                         self.contentView.alpha=1;
                     } completion:^(BOOL finished) {
                         [RippleView removeFromSuperview];
                     }];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [UIView animateWithDuration:0.7
                          delay:0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         RippleView.transform = CGAffineTransformMakeScale(1,1);
                         RippleView.alpha=0;
                         self.contentView.alpha=1;
                     } completion:^(BOOL finished) {
                         [RippleView removeFromSuperview];
                     }];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    location.y = self.bounds.size.height/2;
    [self addSubview:RippleView];
    RippleView.center = location;
    RippleView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    [UIView animateWithDuration:0.4
                     animations:^{
                         RippleView.alpha=1;
                         self.contentView.alpha=0.1;
                     }];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self];
    location.y = self.bounds.size.height/2;
    [self addSubview:RippleView];
    RippleView.center = location;
    RippleView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    [UIView animateWithDuration:0.4
                     animations:^{
                         RippleView.alpha=1;
                         self.contentView.alpha=0.1;
                     }];
}

-(void)setNeedsLayout{
    [super setNeedsLayout];
    NSLog(@"sao");
    RippleView.frame = (CGRect){0,0,self.bounds.size.width*0.9,self.bounds.size.width*0.9};
}

@end

