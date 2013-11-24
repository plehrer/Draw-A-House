//
//  PLDrawHouse.m
//  Drawing a House
//
//  Created by Peter Lehrer on 11/24/13.
//  Copyright (c) 2013 Peter Lehrer. All rights reserved.
//

#import "PLDrawHouse.h"

@implementation PLDrawHouse

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	UIBezierPath *housePath = [UIBezierPath bezierPath];
	housePath.lineWidth = 2.0;
 
	[housePath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
	[housePath addLineToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
	[housePath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 2/3.0 * self.bounds.size.height)];
	[housePath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
	[housePath closePath];
	[[UIColor yellowColor] setFill];
	[housePath fill];
	
	// draw roof
	UIBezierPath *roofPath = [UIBezierPath bezierPath];
	housePath.lineWidth = 2.0;
	
	[roofPath moveToPoint:CGPointMake(1/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
	[roofPath addLineToPoint:CGPointMake(3/6.0 * self.bounds.size.width, 1/5.0 * self.bounds.size.height)];
	[roofPath addLineToPoint:CGPointMake(5/6.0 * self.bounds.size.width, 1/3.0 * self.bounds.size.height)];
	[[UIColor blueColor] setFill];
	[roofPath fill];
	
	// draw chimney
	UIBezierPath *chimneyPath = [UIBezierPath bezierPath];
	chimneyPath.lineWidth = 2.0;
	
	[chimneyPath moveToPoint:CGPointMake(2/6.0 * self.bounds.size.width, 1/3.7 * self.bounds.size.height)];
	[chimneyPath addLineToPoint:CGPointMake(2/6.0 * self.bounds.size.width, 1/5.0 * self.bounds.size.height)];
	[chimneyPath addLineToPoint:CGPointMake(2.5/6 * self.bounds.size.width, 1/5.0 * self.bounds.size.height)];
	[chimneyPath addLineToPoint:CGPointMake(2.5/6 * self.bounds.size.width, 1/4.2 * self.bounds.size.height)];
	[chimneyPath closePath];
	[[UIColor brownColor] setFill];
	[chimneyPath fill];
	
	// draw door
	UIBezierPath *doorPath = [UIBezierPath bezierPathWithRect:CGRectMake(2.6/6.0 * self.bounds.size.width, 1/2.0 * self.bounds.size.height, 1/8.0 * self.bounds.size.width, 1/6.0 * self.bounds.size.height)];
	[[UIColor redColor] setFill];
	[doorPath fill];
	
	// draw window
	UIBezierPath *windowPath = [UIBezierPath bezierPathWithRect:CGRectMake(1/3.0 * self.bounds.size.width, 3/8.0 * self.bounds.size.height, 1/3.0 * self.bounds.size.width, 1/12.0 *self.bounds.size.height)];
	[[UIColor grayColor] setFill];
	[windowPath fill];
	
	
	
}


@end
