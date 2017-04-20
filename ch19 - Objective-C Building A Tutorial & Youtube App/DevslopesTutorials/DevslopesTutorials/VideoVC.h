//
//  VideoVC.h
//  DevslopesTutorials
//
//  Created by jamesshih.ilink on 15/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Video;

@interface VideoVC : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) Video *video;
@end
