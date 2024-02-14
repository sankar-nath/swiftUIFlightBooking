//
//  AllFlights.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import Foundation

class AllFlights: ObservableObject{
    
    //Setting up data
    @Published var flights: [Flight] = [
        Flight(departureCity: "YVR", arrivalCity: "YYZ", flightDistance: 3359.34, flightNumber: "KFC444", carrier: "KFC"),
        Flight(departureCity: "YVR", arrivalCity: "JFK", flightDistance: 3930.39, flightNumber: "APL123", carrier: "Apple Airways"),
        Flight(departureCity: "YVR", arrivalCity: "DXB", flightDistance: 11725.78, flightNumber: "SAN390", carrier: "Air Sankar")
    ]
}
