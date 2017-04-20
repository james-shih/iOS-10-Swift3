//
//  HTTPService.m
//  DevslopesTutorials
//
//  Created by jamesshih.ilink on 14/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

#import "HTTPService.h"

#define URL_BASE "http://localhost:6069"
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService

+ (instancetype)instance {
    static HTTPService *shareInstance = nil;
    
    @synchronized (self) {
        if (shareInstance == nil) {
            shareInstance = [[HTTPService alloc] init];
        }
        return shareInstance;
    }
}

- (void)getTutorials:(onComplete)completionHandler {
    
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    NSURLSession *session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (data != nil) {
            NSError *err;
            NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&err];
            
            if (err == nil) {
                completionHandler(json, nil);
            } else {
                completionHandler(nil, @"Data is corrupt. Please try again.");
            }
        } else {
            NSLog(@"Err: %@", error.debugDescription);
            completionHandler(nil, @"Problem connecting to the server.");
        }
        
    }] resume];
}

@end
