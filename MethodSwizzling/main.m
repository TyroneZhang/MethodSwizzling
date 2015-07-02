//
//  main.m
//  MethodSwizzling
//
//  Created by Demon_Yao on 15/6/22.
//  Copyright (c) 2015年 WorfMan. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *string = @"ThIs is tHe StrIng";
        NSString *lowercaseString = [string lowercaseString];
    }
    return 0;
}
