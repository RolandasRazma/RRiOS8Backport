//
//  CLLocationManager.m
//  RRiOS8BackportCoreLocation
//
//  Created by Rolandas Razma on 03/06/2014.
//  Copyright (c) 2014 Rolandas Razma.
//
//
//  This code is distributed under the terms and conditions of the MIT license.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "CLLocationManager.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation CLLocationManager (RRiOS8Backport)


#pragma mark -
#pragma mark NSObject


+ (void)load {
    
    if( ![CLLocationManager instancesRespondToSelector:@selector(requestWhenInUseAuthorization)] ){
        RR_ADD_INSTANCE_METHOD([CLLocationManager class], @selector(requestWhenInUseAuthorization),     @selector(rr_requestWhenInUseAuthorization));
    }
    
    if( ![CLLocationManager instancesRespondToSelector:@selector(requestAlwaysAuthorization)] ){
        RR_ADD_INSTANCE_METHOD([CLLocationManager class], @selector(requestAlwaysAuthorization),        @selector(rr_requestAlwaysAuthorization));
    }

}


#pragma mark -
#pragma mark CLLocationManager (RRiOS8Backport)


- (void)rr_requestWhenInUseAuthorization {
#if RR_IOS8_BACKPORT_DEBUG
    NSLog(@"iOS8 BACKPORT: -[CLLocationManager requestWhenInUseAuthorization]");
#endif
}


- (void)rr_requestAlwaysAuthorization {
#if RR_IOS8_BACKPORT_DEBUG
    NSLog(@"iOS8 BACKPORT: -[CLLocationManager requestAlwaysAuthorization]");
#endif
}


@end
#pragma clang diagnostic pop