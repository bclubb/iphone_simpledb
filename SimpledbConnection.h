//
//  SimpledbConnection.h
//  iphone_simpledb
//
//  Created by Brian Clubb on 8/6/09.
//  Copyright 2009 MTM Recognition. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SimpledbConnection : NSObject {
}

- (NSArray *)listDomains;
+ (SimpledbConnection *) sharedInstanceWithPublicKey:(NSString *)awsPublicKey 
										  privateKey:(NSString *)privateKey;

@end
