//
//  AFClient.h
//  SampleApp
//
//  Created by PhongNT18 on 1/6/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPRequestOperationManager.h"

@interface AFClient : AFHTTPRequestOperationManager
{
}

+ (AFClient *)sharedInstance;

@end
