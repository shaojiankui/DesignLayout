//
//  LayoutWindow.m
//  DesignLayout
//
//  Created by jakey on 2018/2/11.
//  Copyright © 2018年 Jakey. All rights reserved.
//

#import "LayoutWindow.h"

@implementation LayoutWindow
-(void)awakeFromNib{
    [super awakeFromNib];
//    self.level = CGShieldingWindowLevel();
    self.alphaValue = 0.5;
//    self.opaque = YES;
    
}
@end
