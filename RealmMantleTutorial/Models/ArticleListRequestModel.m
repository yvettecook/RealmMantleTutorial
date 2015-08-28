//
//  ArticleListRequestModel.m
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "ArticleListRequestModel.h"

@implementation ArticleListRequestModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"query" : @"q",
             @"articlesFromDate" : @"begin_date",
             @"articlesToDate" : @"end_date",
             };
}


@end
