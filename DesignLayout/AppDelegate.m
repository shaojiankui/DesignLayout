//
//  AppDelegate.m
//  DesignLayout
//
//  Created by jakey on 2018/2/11.
//  Copyright © 2018年 Jakey. All rights reserved.
//

#import "AppDelegate.h"
#import "LayoutPanelView.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
//    self.window.titlebarAppearsTransparent =YES;
    self.window.movableByWindowBackground =YES;
    self.slider.layer.zPosition = 333;
    self.dingButton.layer.zPosition = 999;
    self.dingButton.state = NSOffState;

    [self.window setContentAspectRatio:CGSizeMake(1, 667/375.0)];
    [self.window setFrame:CGRectMake(0, 0, 375, 667) display:YES animate:NO];
    [self.window center];

    [self.layoutImageView dragableViewDragEnd:^(NSArray *files) {
        NSString *file = [files firstObject];
        
        CGRect oldRect = self.window.frame;
        NSImage *image = [[NSImage alloc] initWithContentsOfFile:file];
        self.layoutImageView.image = image;

        if (image) {
            self.noteLabel.hidden = YES;
            [self.window setContentAspectRatio:NSMakeSize(1, (image.size.height)/image.size.width)];
            NSRect frame = CGRectMake(oldRect.origin.x, oldRect.origin.y, 375, image.size.height/(image.size.width/375.0));
            [self.window setFrame:frame display:YES animate:YES];
        }else{
            self.noteLabel.hidden = NO;
            NSRect frame = CGRectMake(oldRect.origin.x, oldRect.origin.y, 375, 667);
            [self.window setFrame:frame display:YES animate:YES];
            [self.window setContentAspectRatio:CGSizeMake(1, 667/375.0)];
        }
    }];
    
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag
{
    if (!flag)
    {
        [self.window makeKeyAndOrderFront:self];
    }
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear downpngyour application
}


- (IBAction)sliderChange:(NSSlider*)sender {
    CGFloat v= sender.intValue/100.0;
    
    if (v>0.2) {
        self.window.alphaValue = v;
    }

}
- (IBAction)dingButtonTouched:(NSButton*)sender {
    if(sender.state == NSOffState){
//        sender.state = NSOnState;
        self.window.level = NSNormalWindowLevel;
    }else{
        self.window.level = CGShieldingWindowLevel();
//        sender.state = NSOffState;
    }
}
@end
