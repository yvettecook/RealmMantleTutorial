//
//  ArticleModel.h
//  RealmMantleTutorial
//
//  Created by Yvette Cook on 28/08/2015.
//  Copyright (c) 2015 Yvette. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle/Mantle.h>

@interface ArticleModel : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy) NSString *leadParagraph;
@property (nonatomic, copy) NSString *url;

@end
