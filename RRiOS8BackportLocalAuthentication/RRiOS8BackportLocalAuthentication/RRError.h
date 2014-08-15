//
//  RRError.h
//  RRiOS8BackportLocalAuthentication
//
//  Created by Rolandas Razma on 15/08/2014.
//  Copyright (c) 2014 UD7. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger, LAError)
{
    /// Authentication was not successful, because user failed to provide valid credentials.
    LAErrorAuthenticationFailed = kLAErrorAuthenticationFailed,
    
    /// Authentication was canceled by user (e.g. tapped Cancel button).
    LAErrorUserCancel           = kLAErrorUserCancel,
    
    /// Authentication was canceled, because the user tapped the fallback button (Enter Password).
    LAErrorUserFallback         = kLAErrorUserFallback,
    
    /// Authentication was canceled by system (e.g. another application went to foreground).
    LAErrorSystemCancel         = kLAErrorSystemCancel,
    
    /// Authentication could not start, because passcode is not set on the device.
    LAErrorPasscodeNotSet       = kLAErrorPasscodeNotSet,
    
    /// Authentication could not start, because Touch ID is not available on the device.
    LAErrorTouchIDNotAvailable  = kLAErrorTouchIDNotAvailable,
    
    /// Authentication could not start, because Touch ID has no enrolled fingers.
    LAErrorTouchIDNotEnrolled   = kLAErrorTouchIDNotEnrolled,
};

/// LocalAuthentication error domain.
extern NSString *const LAErrorDomain;
