//
//  CodeFinderTests.m
//  ProduceFinder
//
//  Created by Michael Alexander on 3/24/14.
//  Copyright (c) 2014 Michael Alexander. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CodeFinder.h"
#import "DataModel.h"

@interface CodeFinderTests : XCTestCase

@property (nonatomic, strong) DataModel *testDataModel;
@property (nonatomic, strong) CodeFinder *testCodeFinder;

@end

@implementation CodeFinderTests

@synthesize testDataModel, testCodeFinder;

- (void)setUp
{
    [super setUp];
    testDataModel = [[DataModel alloc] init];
    testCodeFinder = [[CodeFinder alloc] initWithData:testDataModel];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testThatCodeFinderIsNotNil
{
    XCTAssertNotNil(testCodeFinder, @"Code Finder should not be nil after initialization");
}

@end
