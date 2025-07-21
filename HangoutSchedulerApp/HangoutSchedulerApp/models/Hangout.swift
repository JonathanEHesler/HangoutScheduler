//
//  Hangout.swift
//  HangoutSchedulerApp
//
//  Created by Jonathan Hesler on 7/9/25.
//

import Foundation

struct Hangout: Identifiable {
    let id: UUID
    var name: String
    var location: String
    var description: String
    var firstDate: Date
    var secondDate: Date
    var multipleDatesSelected: Bool
    
    init(name: String, location: String, description: String = "", firstDate: Date, secondDate: Date = Date(), multipleDatesSelected: Bool) {
        self.id = UUID()
        self.name = name
        self.location = location
        self.description = description
        self.firstDate = firstDate
        self.secondDate = secondDate
        self.multipleDatesSelected = multipleDatesSelected
    }
    
    //Mutating funcs as a getter is not needed for firstDate or secondDate
    mutating func setFirstDate(_ date: Date) {
        self.firstDate = date
    }
    
    mutating func setSecondDate(_ date: Date) {
        self.secondDate = date
    }
    
    //Sets secondDate to the date of firstDate if the user changes a hangout to not having a set date
    mutating func toggleMultipleDatesSelected() {
        if (multipleDatesSelected) {
            self.secondDate = self.firstDate
        }
    }
}

extension Hangout {
    static let sampleHangout = Hangout(name: "Sample Name", location: "Sample Location", description: "Sample Description", firstDate: Date(), multipleDatesSelected: false)
}
