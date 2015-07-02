//
//  NSString+TZExchangeLowercaseMethod.m
//  MethodSwizzling
//
//  Created by Demon_Yao on 15/6/22.
//  Copyright (c) 2015年 WorfMan. All rights reserved.
//

#import "NSString+TZExchangeLowercaseMethod.h"
#import <objc/runtime.h>

@implementation NSString (TZExchangeLowercaseMethod)

- (NSString *)p_newLowercaseString
{
    NSString *lowercase = [self p_newLowercaseString];
    NSLog(@"%@  =>  %@",self,lowercase);
    return lowercase;
}

+ (void)load
{
    Method originalMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class], @selector(p_newLowercaseString));
    
    method_exchangeImplementations(originalMethod, swappedMethod);
}


@end
