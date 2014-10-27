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
    //    Main structure of house - square
    UIBezierPath *housePath = [UIBezierPath bezierPath];
    housePath.lineWidth = 2.0;
    
    [housePath moveToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 3/9.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 3/9.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 6/9.0 * self.bounds.size.height)];
    [housePath addLineToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 6/9.0 * self.bounds.size.height)];
    [housePath closePath];
    
    [[UIColor brownColor] setFill];
    [housePath fill];
    [housePath stroke];
    
    //    The roof - triangle
    UIBezierPath *roofPath = [UIBezierPath bezierPath];
    roofPath.lineWidth = 2.0;
    
    [roofPath moveToPoint:CGPointMake(1/10.0 * self.bounds.size.width, 3/9.0 * self.bounds.size.height)];
    [roofPath addLineToPoint:CGPointMake(5/10.0 * self.bounds.size.width, 1.5/9.0 * self.bounds.size.height)];
    [roofPath addLineToPoint:CGPointMake(9/10.0 * self.bounds.size.width, 3/9.0 * self.bounds.size.height)];
    [roofPath closePath];
    
    [[UIColor redColor] setFill];
    [roofPath fill];
    [roofPath stroke];
    
    //    The door
    UIBezierPath *doorPath = [UIBezierPath bezierPath];
    doorPath.lineWidth = 2.0;
    
    [doorPath moveToPoint:CGPointMake(2/10.0 * self.bounds.size.width, 6/9.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(2/10.0 * self.bounds.size.width, 3.9/9.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(4/10.0 * self.bounds.size.width, 3.9/9.0 * self.bounds.size.height)];
    [doorPath addLineToPoint:CGPointMake(4/10.0 * self.bounds.size.width, 6/9.0 * self.bounds.size.height)];
    [doorPath closePath];
    
    [[UIColor grayColor] setFill];
    [doorPath fill];
    [doorPath stroke];
    
    //    The window
    UIBezierPath *windowPath = [UIBezierPath bezierPath];
    windowPath.lineWidth = 2.0;
    
    [windowPath moveToPoint:CGPointMake(6/10.0 * self.bounds.size.width, 3.9/9.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(8/10.0 * self.bounds.size.width, 3.9/9.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(8/10.0 * self.bounds.size.width, 4.8/9.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(6/10.0 * self.bounds.size.width, 4.8/9.0 * self.bounds.size.height)];
    [windowPath closePath];
    // Window Panes
    [windowPath moveToPoint:CGPointMake(7/10.0 * self.bounds.size.width, 3.9/9.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(7/10.0 * self.bounds.size.width, 4.8/9.0 * self.bounds.size.height)];
    [windowPath moveToPoint:CGPointMake(6/10.0 * self.bounds.size.width, 4.35/9.0 * self.bounds.size.height)];
    [windowPath addLineToPoint:CGPointMake(8/10.0 * self.bounds.size.width, 4.35/9.0 * self.bounds.size.height)];
    
    [[UIColor whiteColor] setFill];
    [windowPath fill];
    [windowPath stroke];
    
    //    The chimney
    UIBezierPath *chimneyPath = [UIBezierPath bezierPath];
    chimneyPath.lineWidth = 2.0;
    
    [chimneyPath moveToPoint:CGPointMake(6.4/10.0 * self.bounds.size.width, 1.8/9.0 * self.bounds.size.height)];
    [chimneyPath addLineToPoint:CGPointMake(7.4/10.0 * self.bounds.size.width, 1.8/9.0 * self.bounds.size.height)];
    [chimneyPath addLineToPoint:CGPointMake(7.4/10.0 * self.bounds.size.width, 2.4/9.0 * self.bounds.size.height)];
    [chimneyPath addLineToPoint:CGPointMake(6.4/10.0 * self.bounds.size.width, 2.4/9.0 * self.bounds.size.height)];
    [chimneyPath closePath];
    
    [[UIColor blackColor] setFill];
    [chimneyPath fill];
    [chimneyPath stroke];
}

@end
