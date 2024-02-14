//
//  Flight.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import Foundation

class Flight:Identifiable{
    
    var departureCity: String
    var arrivalCity: String
    var flightDistance: Double
    var flightNumber: String
    var carrier: String
    var price: Double
    var description: String{
        return ("Flight: \(self.flightNumber)\nOperated By: \(self.carrier)\nPrice: $\(self.price)")
    }

    
    init(departureCity: String, arrivalCity: String, flightDistance: Double, flightNumber: String, carrier: String) {
        self.departureCity = departureCity
        self.arrivalCity = arrivalCity
        self.flightDistance = flightDistance
        self.flightNumber = flightNumber
        self.carrier = carrier
        self.price = (self.flightDistance * 0.12) + 100 //calculates price based on distance
    }
    
    init(){
        self.departureCity = "YYZ"
        self.arrivalCity = "JFK"
        self.flightDistance = 300.00
        self.flightNumber = "SAN999"
        self.carrier = "AirSankar"
        self.price = (self.flightDistance * 0.12) + 100
    }
}
