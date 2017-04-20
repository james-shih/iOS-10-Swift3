//
//  ViewController.swift
//  PushMyNotifs
//
//  Created by jamesshih.ilink on 23/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRMessaging.messaging().subscribe(toTopic: "/topics/news")
    }



}

