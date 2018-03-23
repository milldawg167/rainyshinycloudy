//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Andrew Miller on 22/03/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "98fe8b57935a031db2c739037367047f"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)51.25\(LONGITUDE)-0.33\(APP_ID)\(API_KEY)"
