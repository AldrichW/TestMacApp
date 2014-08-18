//
//  loginViewController.m
//  Test Mac App
//
//  Created by Aldrich Wingsiong on 8/17/14.
//  Copyright (c) 2014 Aldrich Wingsiong. All rights reserved.
//

#import "loginViewController.h"

@interface loginViewController ()

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}
-(BOOL)verifyEmailFormat:(NSString *)emailAddress{
    if (!emailAddress){
        return NO;
    }
    
    if ([emailAddress containsString:@"@apple.com"]){
        NSArray *array = [emailAddress componentsSeparatedByString:@"@"];
        if ([[array objectAtIndex:1] isEqualToString:@"apple.com"]){
            return YES;
        }
        else{
            return NO;
        }
    }
    return NO;
}

-(BOOL)verifyPasswordFormat:(NSString *)password{
    if (!password){
        return NO;
    }
    NSCharacterSet *charSet = [NSCharacterSet decimalDigitCharacterSet];
    if ([password rangeOfCharacterFromSet:charSet].location!=NSNotFound){
        return YES;
    }
    return NO;
}

-(BOOL)verifyPasswordLength:(NSString *)password{
    if (!password){
        return NO;
    }
    if (password.length>8){
        return YES;
    }
    return NO;
}


@end
