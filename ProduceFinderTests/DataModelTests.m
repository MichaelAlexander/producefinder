//
//  DataModelTests.m
//  ProduceFinder
//
//  Created by Michael Alexander on 3/24/14.
//  Copyright (c) 2014 Michael Alexander. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DataModel.h"

@interface DataModelTests : XCTestCase

@property (nonatomic, strong) DataModel *testDataModel;

@end

@implementation DataModelTests

@synthesize testDataModel;

- (void)setUp
{
    [super setUp];
    testDataModel = [[DataModel alloc] init];
}

- (void)tearDown
{
    [super tearDown];
}

- (void)testThatGetValueForPLUReturnsCorrectValues
{
    NSString *controlString = @"Yellow Banana";
    NSString *testString = [testDataModel getProduceNameWithPLU:@"4011"];
    XCTAssertEqualObjects(testString, controlString, @"Incorrect Value: 4011 should return 'Yellow Banana'");
    
    controlString = @"Invalid Code";
    testString = [testDataModel getProduceNameWithPLU:@"8888"];
    XCTAssertEqualObjects(testString, controlString, @"Incorrect Value: 8888 should return 'Invalid Code'");
    
    controlString = @"Organic Yellow Banana";
    testString = [testDataModel getProduceNameWithPLU:@"94011"];
    XCTAssertEqualObjects(testString, controlString, @"Incorrect Value: 94011 should return 'Organic Yellow Banana'");
    
    controlString = @"Genetically Modified Yellow Banana";
    testString = [testDataModel getProduceNameWithPLU:@"84011"];
    XCTAssertEqualObjects(testString, controlString, @"Incorrect Value: 84011 should return 'GM Yellow Banana'");
    
}

- (void)testGetListOfPLUValuesWithSearchText
{
    NSString *invalidText = @"!";
    NSString *validText = @"ban";
    
    NSArray *bananaTest = [testDataModel getListOfPLUValuesWithSearchText:validText SearchBarValue:0];
    NSInteger bananaTestCount = [bananaTest count];
    
    XCTAssertNotNil(bananaTest, @"Valid text should not return nil value");
    XCTAssertEqual(bananaTestCount, 15, @"Valid text 'ban' should return a count of 15");
    
    NSInteger count = [[testDataModel getListOfPLUValuesWithSearchText:invalidText SearchBarValue:0] count];
    XCTAssertEqual(count, 0, @"Invalid text should return and array of zero items");
}


@end
