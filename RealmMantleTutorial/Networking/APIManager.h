//
//  APIManager.h
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "SessionManager.h"
#import "ArticleListRequestModel.h"
#import "ArticleListResponseModel.h"

@interface APIManager : SessionManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel success:(void (^)(ArticleListResponseModel *responseModel))success failure:(void (^)(NSError *error))failure;

@end