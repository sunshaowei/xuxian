//
//  xuxian.m
//  xuxian
//
//  Created by kuanter on 2017/1/13.
//  Copyright © 2017年 kuanter. All rights reserved.
//

#import "xuxian.h"

@implementation xuxian

#define kInterval 10                                // 全局间距



- (id)initWithFrame:(CGRect)frame
{
    self= [super initWithFrame:frame];
    if(self) {
        _lineColor = [UIColor redColor];
        _startPoint = CGPointMake(0, self.bounds.size.height/2);
        _endPoint = CGPointMake(self.bounds.size.width , self.bounds.size.height/2);
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(context);
    
    CGContextSetLineWidth(context,0.5);//线宽度
    
    CGContextSetStrokeColorWithColor(context,self.lineColor.CGColor);
    
    CGFloat lengths[] = {4,2};//先画4个点再画2个点
    
    CGContextSetLineDash(context,0, lengths,2);//注意2(count)的值等于lengths数组的长度
    
    CGContextMoveToPoint(context,self.startPoint.x,self.startPoint.y);
    
    CGContextAddLineToPoint(context,self.endPoint.x,self.endPoint.y);
    
    CGContextStrokePath(context);
    

    
}

@end
