//
//  ProduceFinderTests.m
//  ProduceFinderTests
//
//  Created by Michael Alexander on 6/4/13.
//  Copyright (c) 2013 Michael Alexander. All rights reserved.
//

#import "ProduceFinderTests.h"
#import "DataModel.h"

@implementation ProduceFinderTests

@synthesize testDataModel;

- (void)setUp
{
    [super setUp];
    
    testDataModel = [[DataModel alloc] init];
}

- (void)tearDown
{
    [testDataModel closeDatabase];
    
    [super tearDown];
}

- (void)testThatDatabaseOpenedCorrectly
{
    STAssertTrue([testDataModel databaseDidOpen], @"database did not open correctly");
}

- (void)testThatDataModelReturnsCorrectValues
{
    NSString *controlString = @"Yellow Banana";
    NSString *testString = [testDataModel getProduceNameWithPLU:4011];
    STAssertEqualObjects(testString, controlString, @"string value is incorrect for plu code");
    
}

@end
