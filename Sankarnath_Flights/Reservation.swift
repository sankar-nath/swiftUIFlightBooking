//
//  Reservation.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import Foundation

class Reservation: Identifiable{
    var customerName: String
    var passportNumber: String
    var flightNumber: String
    var departureDate: Date
    var bookingNumber: String //computed property
    
    init(customerName: String, passportNumber: String, flightNumber: String, departureDate: Date) {
        self.customerName = customerName
        self.passportNumber = passportNumber
        self.flightNumber = flightNumber
        self.departureDate = departureDate
        self.bookingNumber = String("\(flightNumber)".prefix(3)).uppercased()
        self.bookingNumber = String("\(bookingNumber)\(customerName)".prefix(5)).uppercased()
            // Takes the first 3 characters of Flight Number and the first two characters of the Customer Name
    }
    
}
