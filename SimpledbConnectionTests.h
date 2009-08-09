//
//  SimpledbConnectionTests.h
//  iphone_simpledb
//
//  Created by Brian Clubb on 8/6/09.
//  Copyright 2009 MTM Recognition. All rights reserved.
//
//  See Also: http://developer.apple.com/iphone/library/documentation/Xcode/Conceptual/iphone_development/135-Unit_Testing_Applications/unit_testing_applications.html

//  Dependent unit tests mean unit test code depends on an application to be injected into.
//  Setting this to 0 means the unit test code is designed to be linked into an independent executable.
#define USE_DEPENDENT_UNIT_TEST 1

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
//#import "application_headers" as required


@interface SimpledbConnectionTests : SenTestCase {

}
- (void) testReUseTheConnection; //should implement the singleton pattern
- (void) testConnectToTheSimpledbService;
- (void) testMath;              // simple standalone test

@end
