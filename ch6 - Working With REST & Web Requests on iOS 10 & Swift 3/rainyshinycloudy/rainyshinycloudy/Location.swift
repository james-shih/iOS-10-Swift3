//
//  Location.swift
//  rainyshinycloudy
//
//  Created by jamesshih.ilink on 17/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import CoreLocation

class Location {
    
    static var shareInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
