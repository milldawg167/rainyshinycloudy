//
//  Forecast.swift
//  rainyshinycloudy
//
//  Created by Andrew Miller on 01/04/2018.
//  Copyright © 2018 Andrew Miller. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = ""
        }
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = ""
        }
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let main = weatherDict["main"] as? Dictionary<String, AnyObject> {
            if let tempmin = main["temp_min"] as? Double {
                let kelvinToCelsius1 = Double(round((tempmin - 273.15)*10)/10)
                self._lowTemp = "\(kelvinToCelsius1)"
            }
            if let tempmax = main["temp_max"] as? Double {
                let kelvinToCelsius2 = Double(round((tempmax - 273.15)*10)/10)
                self._highTemp = "\(kelvinToCelsius2)"
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
            }
        }
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEE HH:00"
            dateFormatter.timeStyle = .full
            self._date = unixConvertedDate.DayOfTheWeek()
        }
    }
}

extension Date {
    func DayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE HH:00"
        return dateFormatter.string(from: self)
    }
}
