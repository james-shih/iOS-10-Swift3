//
//  ViewController.swift
//  NewNotifications
//
//  Created by jamesshih.ilink on 23/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//  參考文章：http://www.appcoda.com.tw/ios10-user-notifications/

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. REQUEST PERMISSION
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            
            if granted {
                print("Notification access granted")
            } else {
                print(error?.localizedDescription)
            }
        }
    }
    
    @IBAction func notifyButtonTapped(sender: UIButton) {
        
        scheduleNotification(inSeconds: 2, completion: { success in
            
            if success {
                print("Successfully scheduled notification")
            } else {
                print("Error scheduleing notification")
            }
        })
    }
    
    func scheduleNotification(inSeconds: TimeInterval, completion: @escaping (_ Success: Bool) -> ()) {
        
        // Add an attachment
        let myImage = "rick_grimes"
        guard let imageUrl = Bundle.main.url(forResource: myImage, withExtension: "gif") else {
            completion(false)
            return
        }
        
        var attachment: UNNotificationAttachment
        attachment = try! UNNotificationAttachment(identifier: "myNotification", url: imageUrl, options: .none)
        
        let notif = UNMutableNotificationContent()
        
        //ONLY FOR CATEGORY
        notif.categoryIdentifier = "myNotificationCategory"
        
        notif.title = "New notification"
        notif.subtitle = "These are great!"
        notif.body = "The new notification options in iOS 10 are what I've been waiting for! 👊"
        
        notif.attachments = [attachment]
        
        let notifTrigger = UNTimeIntervalNotificationTrigger(timeInterval: inSeconds, repeats: false)
        let request = UNNotificationRequest(identifier: "myNotification", content: notif, trigger: notifTrigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            
            if error != nil {
                print(error)
                completion(false)
            } else {
                completion(true)
            }
        })
    }
}




