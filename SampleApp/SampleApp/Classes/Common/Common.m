//
//  Common.m
//  SampleApp
//
//  Created by PhongNT18 on 1/6/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import "Common.h"



@implementation Common

+ (void)showAlert:(NSString *)message title:(NSString *)title
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
