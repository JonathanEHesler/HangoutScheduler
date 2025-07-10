//
//  Hangout.swift
//  HangoutSchedulerApp
//
//  Created by Jonathan Hesler on 7/9/25.
//

import Foundation

struct Hangout {
    var name: String
    var location: String
    var description: String = ""
    var date: SelectedDate
    //Defaults to 0 in case a specific date & time is not yet selected
    var time: TimeInterval = 0
    
    //Allows for a hangout to be provided with a specific date or a date range
    enum SelectedDate {
        case setDate(Date)
        case setDateRange(start: Date, end: Date)
    }
}
