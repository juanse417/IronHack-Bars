//
//  NextElementTests.m
//  Bars
//
//  Created by Sebas on 06/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>

#define MES @"💩"
@interface NextElementTests : XCTestCase

@end

@implementation NextElementTests

-(void)testCanCreateArray {

    NSArray *prueba = @[@"Soy1", @"Soy2", @"Soy3"];
    XCTAssertNotNil(prueba, MES);
    
}

-(void)testGiveNextElement {
    
    
    NSArray *prueba = @[@"Soy1", @"Soy2", @"Soy3"];

    XCTAssertEqualObjects(prueba.nextElement, @"Soy1", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy2", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy3", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy1", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy2", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy3", MES);
    XCTAssertEqualObjects(prueba.nextElement, @"Soy1", MES);
    
    
}

-(void)testGivePreviousElement {
    
    
    
}

@end
