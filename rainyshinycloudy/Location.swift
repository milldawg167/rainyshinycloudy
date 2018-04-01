//
//  Location.swift
//  rainyshinycloudy
//
//  Created by Andrew Miller on 01/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
