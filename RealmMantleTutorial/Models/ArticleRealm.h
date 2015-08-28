//
//  ArticleRealm.h
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "RLMObject.h"
#import "ArticleModel.h"

@interface ArticleRealm : RLMObject

@property NSString *leadParagraph;
@property NSString *URL;

- (id)initWithMantleModel:(ArticleModel *)articleModel;

@end
