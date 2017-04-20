//
//  CameraVC.swift
//  DevChat
//
//  Created by jamesshih.ilink on 09/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit
import FirebaseAuth

class CameraVC: AAPLCameraViewController, AAPLCameraVCDelegate {

    @IBOutlet weak var previewView: AAPLPreviewView!
    @IBOutlet weak var cameraBtn: UIButton!
    @IBOutlet weak var recordBtn: UIButton!
    
    override func viewDidLoad() {
        
        delegate = self
        _previewView = previewView
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        guard FIRAuth.auth() != nil else {
            performSegue(withIdentifier: "LoginVC", sender: nil)
            return
        }
    }

    @IBAction func recordBtnPressed(_ sender: AnyObject) {
        toggleMovieRecording()
    }
    
    @IBAction func changeCameraBtnPressed(_ sender: AnyObject) {
        changeCamera()
    }
    
    func shouldEnableCameraUI(_ enable: Bool) {
        cameraBtn.isEnabled = enable
        print("shouldEnableCameraUI: \(enable)")
    }
    
    func shouldEnableRecordUI(_ enable: Bool) {
        recordBtn.isEnabled = enable
        print("shouldEnableRecordUI: \(enable)")
    }
    
    func canStartRecording() {
        print("canStartRecording")
    }
    
    func recordingHasStarted() {
        print("recordingHasStarted")
    }
    
    func videoRecordingFailed() {
        print("videoRecordingFailed")
    }
    
    func videoRecordingComplete(_ videoURL: URL!) {
        performSegue(withIdentifier: "UsersVC", sender: ["videoURL": videoURL])
    }
    
    func snapshotFailed() {
        print("snapshotFailed")
    }
    
    func snapshotTaken(_ snapshotData: Data!) {
        performSegue(withIdentifier: "UsersVC", sender: ["snapshotData": snapshotData])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let userVC = segue.destination as? UsersVC {
            if let videoDict = sender as? Dictionary<String, URL> {
                let url = videoDict["videoURL"]
                userVC.videoURL = url
            } else if let snapDict = sender as? Dictionary<String, Data> {
                let snapData = snapDict["snapshotData"]
                userVC.snapData = snapData
            }
        }
    }
}










