//
//  RRContext.m
//  RRiOS8BackportLocalAuthentication
//
//  Created by Rolandas Razma on 15/08/2014.
//  Copyright (c) 2014 UD7. All rights reserved.
//

#import "RRContext.h"
#import "objc/runtime.h"


@implementation RRContext {
    NSString *_localizedFallbackTitle;
}

#pragma mark -
#pragma mark NSObject


+ (void)load {
    
    if( !NSClassFromString(@"LAContext") ){
        objc_registerClassPair(objc_allocateClassPair([RRContext class], "LAContext", 0));
    }
    
}


#pragma mark -
#pragma mark RRContext


- (BOOL)canEvaluatePolicy:(RRPolicy)policy error:(NSError * __autoreleasing *)error {
#if RR_IOS8_BACKPORT_DEBUG
    NSLog(@"iOS8 BACKPORT: -[LAContext canEvaluatePolicy:error:]");
#endif
    
    return NO;
}


- (void)evaluatePolicy:(RRPolicy)policy localizedReason:(NSString *)localizedReason reply:(void(^)(BOOL success, NSError *error))reply {
#if RR_IOS8_BACKPORT_DEBUG
    NSLog(@"iOS8 BACKPORT: -[LAContext evaluatePolicy:localizedReason:reply:]");
#endif
    
    reply(NO, [NSError errorWithDomain:@kLAErrorDomain code:kLAErrorAuthenticationFailed userInfo:nil]);
}


@end
