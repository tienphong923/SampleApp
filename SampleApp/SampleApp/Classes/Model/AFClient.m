//
//  AFClient.m
//  SampleApp
//
//  Created by PhongNT18 on 1/6/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import "AFClient.h"
#import "Common.h"
#import "Defined.h"


@implementation AFClient
{
}

+ (AFClient *)sharedInstance
{
    static AFClient *_clinicCMS = nil;
    
    static dispatch_once_t onceTokenClinic;
    
    dispatch_once(&onceTokenClinic, ^{
        
        _clinicCMS = [[AFClient alloc] initWithBaseURL:[NSURL URLWithString:API_URL]];
        
    });
    
    return _clinicCMS;
}


- (id)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    
    if (self) {
        self.securityPolicy.allowInvalidCertificates = YES;

        //Custom Header
        //self.requestSerializer = [AFJSONRequestSerializer serializer];
        //[self.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        //[self.requestSerializer setAuthorizationHeaderFieldWithUsername:kClinicApiAccessUser password:kClinicApiAccessPass];
        
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        //self.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", nil];
    }
    
    return self;
}


@end
