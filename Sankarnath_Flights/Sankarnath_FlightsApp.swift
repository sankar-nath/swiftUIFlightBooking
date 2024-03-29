//
//  Sankarnath_FlightsApp.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import SwiftUI

@main
struct Sankarnath_FlightsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AllFlights())
                .environmentObject(AllReservations()) //Environment objects are passed along at the highest hierarchy
        }
    }
}
