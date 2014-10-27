//
//  SSDrawingView.m
//  Drawing a House
//
//  Created by Sawant Shah on 27/10/2014.
//  Copyright (c) 2014 Sawant Shah. All rights reserved.
//

#import "SSDrawingView.h"

@implementation SSDrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    bezierPath.lineWidth = 2.0;

//    Main structure of house - square
    [bezierPath moveToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];

//    The roof - triangle
    [bezierPath addLineToPoint:CGPointMake(5/10.0 * self.bounds.size.width, 0.5/3.0 * self.bounds.size.height)];
    [bezierPath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];

    [bezierPath stroke];
}

@end
