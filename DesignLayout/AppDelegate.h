//
//  AppDelegate.h
//  DesignLayout
//
//  Created by jakey on 2018/2/11.
//  Copyright © 2018年 Jakey. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "LayoutImageView.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet LayoutImageView *layoutImageView;

@property (weak) IBOutlet NSSlider *slider;
@property (weak) IBOutlet NSButton *dingButton;
@property (weak) IBOutlet NSTextField *noteLabel;

- (IBAction)sliderChange:(id)sender;
- (IBAction)dingButtonTouched:(id)sender;

@end

