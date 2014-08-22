//
//  FilmModel.h
//  SampleApp
//
//  Created by PhongNT18 on 8/10/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FilmType.h"

@class AFHTTPRequestOperation;

@interface FilmModel : NSObject
{
}

+ (AFHTTPRequestOperation *)getTypesWithCompleteBlock:(void(^)(NSArray *typeArray))block;

@end
