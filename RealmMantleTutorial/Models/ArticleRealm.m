//
//  ArticleRealm.m
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "ArticleRealm.h"

@implementation ArticleRealm

- (id)initWithMantleModel:(ArticleModel *)articleModel{
    self = [super init];
    if(!self) return nil;

    self.leadParagraph = articleModel.leadParagraph;
    self.URL = articleModel.url;
    
    return self;
}

@end
