//
//  APIManager.m
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "APIManager.h"
#import "Mantle.h"

static NSString *const kArticleListPath = @"/svc/serach/v2/articlesearch.json";
static NSString *const kApiKey = @"49f25130ee814743ea1516873950d715:1:72803881";

@implementation APIManager

- (NSURLSessionDataTask *)getArticlesWithRequestModel:(ArticleListRequestModel *)requestModel
                                              success:(void (^)(ArticleListResponseModel *))success
                                              failure:(void (^)(NSError *))failure{
    
    NSDictionary *parameters = [MTLJSONAdapter JSONDictionaryFromModel:requestModel error:nil];
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    [parametersWithKey setObject:kApiKey forKey:@"api-key"];
    
    return [self GET:kArticleListPath parameters:parametersWithKey success:^(NSURLSessionDataTask *task, id responseObject) {
        
        NSDictionary *responseDictionary = (NSDictionary *)responseObject;
        
        NSError *error;
        ArticleListResponseModel *list = [MTLJSONAdapter modelOfClass:ArticleListResponseModel.class fromJSONDictionary:responseDictionary error:&error];
        
        success(list);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
        failure(error);
        
    }];
}

@end
