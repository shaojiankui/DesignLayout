//
//  LayoutPanelView.m
//  DesignLayout
//
//  Created by jakey on 2018/2/11.
//  Copyright © 2018年 Jakey. All rights reserved.
//

#import "LayoutPanelView.h"
@interface LayoutPanelView() {
    NSColor *color;
    NSImage *image;
    NSPoint lastLocation;
    NSUInteger radius;
}
@end

@implementation LayoutPanelView

//
//- (id)initWithFrame:(NSRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        color = NSColor.blueColor;
//        image = [[NSImage alloc] initWithSize:frame.size];
//        radius = 2;
//    }
//    
//    return self;
//}
//-(void)awakeFromNib{
//    [super awakeFromNib];
//    color = NSColor.blueColor;
//    image = [[NSImage alloc] initWithSize:self.frame.size];
//    radius = 2;
//}
//- (void)drawRect:(NSRect)dirtyRect
//{
////    [image drawInRect:NSScreen.mainScreen.frame fromRect:NSZeroRect operation:NSCompositeSourceOver fraction:1.0];
//}
//
//- (void)drawCircleAtPoint:(NSPoint)point
//{
//    [image lockFocus];
//    NSBezierPath *path = [NSBezierPath bezierPathWithOvalInRect:NSMakeRect(point.x - radius, point.y - radius, radius * 2, radius * 2)];
//    [color set];
//    [path fill];
//    [image unlockFocus];
//}
//
//- (void)drawLineFromPoint:(NSPoint)point1 toPoint:(NSPoint)point2
//{
//    [image lockFocus];
//    NSBezierPath *path = [NSBezierPath bezierPath];
//    path.lineWidth = radius * 2;
//    [color setStroke];
//    [path moveToPoint:point1];
//    [path lineToPoint:point2];
//    [path stroke];
//    [image unlockFocus];
//}
//
//- (void)mouseDown:(NSEvent *)event {
//    lastLocation = [self convertPoint:self.window.mouseLocationOutsideOfEventStream fromView:nil];
//    [self drawCircleAtPoint:lastLocation];
//}
//
//- (void)mouseDragged:(NSEvent *)event
//{
//    NSPoint newLocation = [self convertPoint:self.window.mouseLocationOutsideOfEventStream fromView:nil];
//    [self drawCircleAtPoint:newLocation];
//    [self drawLineFromPoint:lastLocation toPoint:newLocation];
//    [self setNeedsDisplayInRect:NSMakeRect(fmin(lastLocation.x - radius, newLocation.x - radius),
//                                           fmin(lastLocation.y - radius, newLocation.y - radius),
//                                           abs(newLocation.x - lastLocation.x) + radius * 2,
//                                           abs(newLocation.y - lastLocation.y) + radius * 2)];
//    lastLocation = newLocation;
//}
//
//- (void)mouseUp:(NSEvent *)event
//{
//    image = [[NSImage alloc] initWithSize:NSScreen.mainScreen.frame.size];
//    [self setNeedsDisplay:YES];
//}



@end
