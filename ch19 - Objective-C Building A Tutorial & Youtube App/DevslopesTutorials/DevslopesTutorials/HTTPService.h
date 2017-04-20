//
//  HTTPService.h
//  DevslopesTutorials
//
//  Created by jamesshih.ilink on 14/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^onComplete)(NSArray * _Nullable dataArray, NSString * _Nullable errMessage);

@interface HTTPService : NSObject

+ (instancetype)instance;
- (void)getTutorials:(nullable onComplete)completionHandler;

@end
