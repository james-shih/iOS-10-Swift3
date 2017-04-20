//
//  Message.swift
//  firebase-sort-data
//
//  Created by jamesshih.ilink on 24/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import Foundation

class Message {
    var msgId: String!
    var msgText: String!
    var postedDate: String!
    
    init(msgId: String, msgData: [String: AnyObject]) {
        self.msgId = msgId
        
        if let msgText = msgData["text"] as? String {
            self.msgText = msgText
        }
        
        if let postedDate = msgData["postedDate"] as? String {
            self.postedDate = postedDate
        }
    }
}
