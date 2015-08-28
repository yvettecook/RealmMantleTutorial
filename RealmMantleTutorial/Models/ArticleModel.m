//
//  ArticleModel.m
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "ArticleModel.h"

@implementation ArticleModel

#pragma mark - Mantle JSONKeyPathsByPropertyKey

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"leadParagraph" : @"lead_paragraph",
             @"url" : @"web_url"
             };
}

@end
