//
//  RRContext.h
//  RRiOS8BackportLocalAuthentication
//
//  Created by Rolandas Razma on 15/08/2014.
//  Copyright (c) 2014 UD7. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RRPublicDefines.h"


typedef NS_ENUM(NSInteger, RRPolicy) {
    RRPolicyDeviceOwnerAuthenticationWithBiometrics = kLAPolicyDeviceOwnerAuthenticationWithBiometrics
};


@interface RRContext : NSObject

@property (nonatomic, copy) NSString *localizedFallbackTitle;

- (BOOL)canEvaluatePolicy:(RRPolicy)policy error:(NSError * __autoreleasing *)error;
- (void)evaluatePolicy:(RRPolicy)policy localizedReason:(NSString *)localizedReason reply:(void(^)(BOOL success, NSError *error))reply;

@end