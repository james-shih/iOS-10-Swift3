//
//  AAPLCameraVCDelegate01.h
//  DevChat
//
//  Created by jamesshih.ilink on 10/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;
-(void)videoRecordingComplete:(NSURL*)videoURL;
-(void)videoRecordingFailed;
-(void)snapshotTaken:(NSData*)snapshotData;
-(void)snapshotFailed;

@end
