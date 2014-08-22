//
//  UIButtonWithImageAndText.m
//  Shared Library
//
//  Created by PhongNT18 on 3/12/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import "UIButtonWithImageAndText.h"

@implementation UIButtonWithImageAndText

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // the space between the image and text
    CGFloat spacing = 10.0;
    
    // lower the text and push it left so it appears centered
    //  below the image
    CGSize imageSize = self.imageView.frame.size;
    self.titleEdgeInsets = UIEdgeInsetsMake((imageSize.height + spacing), - imageSize.width, 0, 0.0);
    
    //self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
    // raise the image and push it right so it appears centered
    //  above the text
    //CGSize titleSize = self.titleLabel.frame.size;
    //self.imageEdgeInsets = UIEdgeInsetsMake(- (titleSize.height + spacing), 0.0, 0.0, -titleSize.width);
    CGPoint cc = self.imageView.center;
    self.imageView.center = CGPointMake(self.frame.size.width/2, cc.y);
}

@end
