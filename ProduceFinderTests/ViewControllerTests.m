//
//  ViewControllerTests.m
//  ProduceFinder
//
//  Created by Michael Alexander on 3/24/14.
//  Copyright (c) 2014 Michael Alexander. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ProduceFinderViewController.h"
#import "DataModel.h"

@interface ViewControllerTests : XCTestCase

@property (nonatomic, strong) DataModel *testDataModel;
@property (nonatomic, strong) ProduceFinderViewController *testViewController;

@end

@implementation ViewControllerTests

@synthesize testDataModel, testViewController;

- (void)setUp
{
    [super setUp];
    testDataModel = [[DataModel alloc] init];
    testViewController = [[ProduceFinderViewController alloc] initWithData:testDataModel];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testThatViewControllerIsNotNil
{
    XCTAssertNotNil(testViewController, @"View Controller should not be nil after initialization");
}

@end
