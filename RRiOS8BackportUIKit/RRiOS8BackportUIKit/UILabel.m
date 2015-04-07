//
//  UILabel.m
//  RRiOS8BackportUIKit
//
//  Created by Rolandas Razma on 07/04/2015.
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

#import "UILabel.h"
#import "objc/runtime.h"


#define RR_ADD_INSTANCE_METHOD(__CLASS__, __ORIG_SELECTOR__, __NEW_SELECTOR__) {                                                            \
    Method newInstanceMethod = class_getInstanceMethod(__CLASS__, __NEW_SELECTOR__);                                                        \
    class_addMethod(__CLASS__, __ORIG_SELECTOR__, method_getImplementation(newInstanceMethod), method_getTypeEncoding(newInstanceMethod));  \
}


@implementation UILabel (RRiOS8Backport)


+ (void)load {
    
    if( ([[[UIDevice currentDevice] systemVersion] compare:@"8.0" options:NSNumericSearch] == NSOrderedAscending) ){
        RR_ADD_INSTANCE_METHOD([self class], @selector(setFrame:), @selector(rr_r_setFrame:))
    }
    
}


- (void)rr_r_setFrame:(CGRect)frame {
    
    CGFloat frameWidth = floorf(CGRectGetWidth(frame));
    if( !self.preferredMaxLayoutWidth || (self.preferredMaxLayoutWidth != frameWidth && [self automaticPreferredMaxLayoutWidth]) ){
        [self setPreferredMaxLayoutWidth: frameWidth];
        objc_setAssociatedObject(self, @selector(automaticPreferredMaxLayoutWidth), @YES, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    [self rr_r_setFrame:frame];
}


- (BOOL)automaticPreferredMaxLayoutWidth {
    return [objc_getAssociatedObject(self, @selector(automaticPreferredMaxLayoutWidth)) boolValue];
}


@end
