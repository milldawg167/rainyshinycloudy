//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Andrew Miller on 22/03/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let COUNT = "&cnt="
let APP_ID = "&appid="
let API_KEY = "98fe8b57935a031db2c739037367047f"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)weather?\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"

let FORECAST_URL = "\(BASE_URL)forecast?\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(COUNT)10\(APP_ID)\(API_KEY)"
