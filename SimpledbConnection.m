//
//  SimpledbConnection.m
//  iphone_simpledb
//
//  Created by Brian Clubb on 8/6/09.
//  Copyright 2009 MTM Recognition. All rights reserved.
//

#import "SimpledbConnection.h"

// This is a singleton class, see below
static SimpledbConnection *sharedCLDelegate = nil;

@implementation SimpledbConnection

- (NSArray *) listDomains{
	return [[NSArray alloc] init];
}

+ (SimpledbConnection *) sharedInstanceWithPublicKey:(NSString *)awsPublicKey 
										  privateKey:(NSString *)privateKey{
	@synchronized(self) {
		if (sharedCLDelegate == nil) {
			[[self alloc] init];
		}
	}
	
	return sharedCLDelegate;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (sharedCLDelegate == nil) {
            sharedCLDelegate = [super allocWithZone:zone];
            return sharedCLDelegate;  // assignment and return on first allocation
        }
    }
    return nil; // on subsequent allocation attempts return nil
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

- (id)retain {
    return self;
}

- (unsigned)retainCount {
    return UINT_MAX;  // denotes an object that cannot be released
}

- (void)release {
    //do nothing
}

- (id)autorelease {
    return self;
}
@end
