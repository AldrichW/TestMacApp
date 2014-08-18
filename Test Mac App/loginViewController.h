//
//  loginViewController.h
//  Test Mac App
//
//  Created by Aldrich Wingsiong on 8/17/14.
//  Copyright (c) 2014 Aldrich Wingsiong. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface loginViewController : NSViewController
@property (weak) IBOutlet NSTextField *emailTextField;
@property (weak) IBOutlet NSSecureTextField *passwordTextField;
@property (weak) IBOutlet NSButton *loginButton;
@property (weak) IBOutlet NSButton *cancelButton;

-(BOOL)verifyEmailFormat:(NSString *)emailAddress;

-(BOOL)verifyPasswordFormat:(NSString *)password;

-(BOOL)verifyPasswordLength:(NSString *)password;

@end
