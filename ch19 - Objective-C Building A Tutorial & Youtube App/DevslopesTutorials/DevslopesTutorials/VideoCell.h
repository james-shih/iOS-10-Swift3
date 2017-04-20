//
//  VideoCell.h
//  DevslopesTutorials
//
//  Created by jamesshih.ilink on 14/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Video;

@interface VideoCell : UITableViewCell

- (void)updateUI:(nonnull Video *)video;

@end
