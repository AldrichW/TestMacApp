//
//  Test_Mac_AppTests.m
//  Test Mac AppTests
//
//  Created by Aldrich Wingsiong on 6/13/14.
//  Copyright (c) 2014 Aldrich Wingsiong. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "loginViewController.h"

@interface Test_Mac_AppTests : XCTestCase

@end

@implementation Test_Mac_AppTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

-(void)testNilEmail{
    NSString *email = nil;
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyEmailFormat:email];
    
    XCTAssertFalse(valid,@"Expecting to get NO with a nil email.");
}

- (void)testValidEmail{
    NSString *email = @"awingsiong@apple.com";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyEmailFormat:email];
    
    XCTAssertTrue(valid,@"Expecting to get YES with a valid apple email.");
}

-(void)testInvalidEmail{
    NSString *email = @"awingsiong";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyEmailFormat:email];
    
    XCTAssertFalse(valid,@"Expecting to get NO with no domain name.");
}

-(void)testInvalidEmail2{
    NSString *email = @"awingsiong@apple.com.rom";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyEmailFormat:email];
    
    XCTAssertFalse(valid,@"Expecting to get NO with the domain name in the middle of the email.");
}

-(void)testShortPasswordLength{
    NSString *password = @"hey123";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyPasswordLength:password];
    
    XCTAssertFalse(valid,@"Expecting to get NO with a password less than 8 characters.");
}

-(void)testNilPassword{
    NSString *password = @"nil";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyPasswordLength:password];
    
    XCTAssertFalse(valid,@"Expecting to get NO with a nil password.");
}

-(void)testValidLengthPassword{
    NSString *password = @"hey1234444444";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyPasswordLength:password];
    
    XCTAssertTrue(valid,@"Expecting to get YES with a valid length password");
}

-(void)testNoNumberPassword{
    NSString *password = @"heytheremynameisaldrich";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyPasswordFormat:password];
    
    XCTAssertFalse(valid,@"Expecting to get NO with a no-number password");
}

-(void)testValidFormatPassword{
    NSString *password = @"heytheremynameisaldrich123";
    loginViewController *vc = [[loginViewController alloc]init];
    BOOL valid = [vc verifyPasswordFormat:password];
    
    XCTAssertTrue(valid,@"Expecting to get YES with a valid format password");
}



@end
