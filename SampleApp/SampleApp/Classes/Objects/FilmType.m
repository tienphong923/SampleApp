//
//  FilmType.m
//  SampleApp
//
//  Created by PhongNT18 on 8/10/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import "FilmType.h"
#import "Common.h"

@implementation FilmType

- (instancetype)initWithData:(NSDictionary *)data
{
    self = [super init];
    
    if (self) {
        self.TYPE_ID = [data[@"id"] integerValue];
        self.TYPE_NAME = data[@"name"];
    }
    
    return self;
}

- (instancetype)initWithFilmID:(NSInteger)type_id typeName:(NSString *)typeName
{
    self = [super init];
    
    if (self) {
        _TYPE_ID = type_id;
        _TYPE_NAME = [typeName copy];
    }
    
    return self;
}

- (NSDictionary *)convertToDictionary
{
    NSDictionary *data = @{
                           @"id" : @(_TYPE_ID),
                           @"name" : _TYPE_NAME
                           };
    
    return data;
}

@end
