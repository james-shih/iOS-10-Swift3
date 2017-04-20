//
//  User.swift
//  DevChat
//
//  Created by jamesshih.ilink on 13/03/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String
    private var _uid: String
    
    var firstName: String {
        return _firstName
    }
    
    var uid: String {
        return _uid
    }
    
    init(uid: String, firstName: String) {
        _firstName = firstName
        _uid = uid
    }
}
