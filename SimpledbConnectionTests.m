//
//  SimpledbConnectionTests.m
//  iphone_simpledb
//
//  Created by Brian Clubb on 8/6/09.
//  Copyright 2009 MTM Recognition. All rights reserved.
//

#import "SimpledbConnectionTests.h"
#import "SimpledbConnection.h"


@implementation SimpledbConnectionTests

- (void) setUp
{
    // Create data structures here.
}

- (void) tearDown
{
    // Release data structures here.
}

- (void) testReUseTheConnection {
	SimpledbConnection *testConnection = [SimpledbConnection sharedInstanceWithPublicKey:@"" privateKey:@""];
	SimpledbConnection *testConnection2 = [SimpledbConnection sharedInstanceWithPublicKey:@"" privateKey:@""];
	STAssertEqualObjects(testConnection, testConnection2, @"These were supposed to be the same instance of a simpledb class");
}

- (void) testConnectToTheSimpledbService {
	SimpledbConnection *testConnection = [SimpledbConnection sharedInstanceWithPublicKey:@"" privateKey:@""];
	STAssertTrue([testConnection.listDomains count] > 0, @"Unable to connect to the amazon service");
}

- (void) testMath {
    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
    
}


@end
