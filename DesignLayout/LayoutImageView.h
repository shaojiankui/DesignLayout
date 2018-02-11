//
//  LayoutImageView.h
//  DesignLayout
//
//  Created by jakey on 2018/2/11.
//  Copyright © 2018年 Jakey. All rights reserved.
//

#import <Cocoa/Cocoa.h>
typedef void (^DragableViewDragEnd)(NSArray *files);

@interface LayoutImageView : NSImageView
{
    DragableViewDragEnd _dragableViewDragEnd;
    BOOL _isDragIn;
}
-(void)dragableViewDragEnd:(DragableViewDragEnd)dragableViewDragEnd;
@end
