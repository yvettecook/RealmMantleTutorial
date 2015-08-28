//
//  ArticleListResponse.m
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "ArticleListResponseModel.h"

@class ArticleModel;

@implementation ArticleListResponseModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"articles" : @"response.docs",
             @"status" : @"status"
             };
}

#pragma mark - JSONTransformer

+ (NSValueTransformer *)articlesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:ArticleModel.class];
}

@end
