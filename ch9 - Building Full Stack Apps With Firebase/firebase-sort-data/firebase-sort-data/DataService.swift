//
//  DataService.swift
//  firebase-sort-data
//
//  Created by jamesshih.ilink on 24/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = FIRDatabase.database().reference()

class DataService {
    static let ds = DataService()
    
    var MSGS_DB_REF = DB_BASE.child("messages")
}
