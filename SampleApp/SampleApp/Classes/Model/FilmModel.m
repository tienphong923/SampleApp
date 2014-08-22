//
//  FilmModel.m
//  SampleApp
//
//  Created by PhongNT18 on 8/10/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import "FilmModel.h"
#import "AFClient.h"
#import "Common.h"

@implementation FilmModel

+ (AFHTTPRequestOperation *)getTypesWithCompleteBlock:(void(^)(NSArray *typeArray))block
{
    AFClient *sharedClient = [AFClient sharedInstance];
    
    AFHTTPRequestOperation *request;
    request = [sharedClient POST:@"/home/types" parameters:@{} success:^(AFHTTPRequestOperation *operation, id JSON) {
        FISLog(@"RESPONSE: %@", JSON);
        
        NSInteger errorCode = [JSON[@"err"] integerValue];
        
        NSMutableArray *typeList = nil;
        
        if (errorCode == 0) {
            NSArray *array = JSON[@"data"];
            
            typeList = [[NSMutableArray alloc] initWithCapacity:array.count];
            for (int i=0; i<array.count; i++) {
                FilmType *type = [[FilmType alloc] initWithData:array[i]];
                [typeList addObject:type];
            }
        }
        
        if (block) {
            block(typeList);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        FISLog(@"ERROR: %@", error);
        
        if (block) {
            block(nil);
        }
    }];
    
    return request;
}


@end
