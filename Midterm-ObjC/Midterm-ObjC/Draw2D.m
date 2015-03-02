//
//  Draw2D.m
//  Midterm-ObjC
//
//  Created by Nav Bhatti on 2015-02-15.
//  Copyright (c) 2015 Nav Bhatti. All rights reserved.
//

#import "Draw2D.h"

@implementation Draw2D

- (void)drawRect: (CGRect)rect {
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    CGRect rectangle = CGRectMake(0, 0, 50, 50);
    CGContextAddRect(context, rectangle);
    CGContextFillPath(context);
}
@end
