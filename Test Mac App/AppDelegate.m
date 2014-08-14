//
//  AppDelegate.m
//  Test Mac App
//
//  Created by Aldrich Wingsiong on 6/13/14.
//  Copyright (c) 2014 Aldrich Wingsiong. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
            
@property (weak) IBOutlet NSWindow *window;
@property (readwrite) NSString *myName;

@end
@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    NSLog (@"Hello World!");

}

-(void) setMyName:(NSString *)myName{
    self.myName = myName;
    
    NSLog(@"This works well");
    NSLog(@"This doesn't work");
    NSLog(@"What the heck is going on");
    NSLog(@"All good!!!");
}

@end
