//
//  RRPublicDefines.h
//  RRiOS8BackportLocalAuthentication
//
//  Created by Rolandas Razma on 15/08/2014.
//  Copyright (c) 2014 UD7. All rights reserved.
//

#ifndef LocalAuthentication_LAPublicDefines_h
#define LocalAuthentication_LAPublicDefines_h

// Policies
#define kLAPolicyDeviceOwnerAuthenticationWithBiometrics    1

// Options
#define kLAOptionUserFallback                               1
#define kLAOptionAuthenticationReason                       2

// Error codes
#define kLAErrorAuthenticationFailed                       -1
#define kLAErrorUserCancel                                 -2
#define kLAErrorUserFallback                               -3
#define kLAErrorSystemCancel                               -4
#define kLAErrorPasscodeNotSet                             -5
#define kLAErrorTouchIDNotAvailable                        -6
#define kLAErrorTouchIDNotEnrolled                         -7

// Error domain
#define kLAErrorDomain        "com.apple.LocalAuthentication"

#endif