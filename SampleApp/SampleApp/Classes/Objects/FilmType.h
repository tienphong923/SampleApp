//
//  FilmType.h
//  SampleApp
//
//  Created by PhongNT18 on 8/10/14.
//  Copyright (c) 2014 Z-Team. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilmType : NSObject
{
}

@property (assign, nonatomic) NSInteger TYPE_ID;
@property (strong, nonatomic) NSString *TYPE_NAME;

- (instancetype)initWithData:(NSDictionary *)data;

- (instancetype)initWithFilmID:(NSInteger)type_id typeName:(NSString *)typeName;

- (NSDictionary *)convertToDictionary;

@end
