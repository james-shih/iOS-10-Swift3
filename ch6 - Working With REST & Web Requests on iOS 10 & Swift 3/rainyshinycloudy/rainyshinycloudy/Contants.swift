//
//  Contants.swift
//  rainyshinycloudy
//
//  Created by jamesshih.ilink on 16/02/2017.
//  Copyright © 2017 ilink. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGTITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "d0e485f5a14acabd2b36858984de7f7b"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.shareInstance.latitude!)&lon=\(Location.shareInstance.longitude!)&appid=d0e485f5a14acabd2b36858984de7f7b"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.shareInstance.latitude!)&lon=\(Location.shareInstance.longitude!)&cnt=10&appid=d0e485f5a14acabd2b36858984de7f7b"




