//
//  AllReservations.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import Foundation

class AllReservations: ObservableObject{
    @Published var reservations: [Reservation] = []
    
    //function which is called in FlightReservation which appends the current reservation to the list of all reservations
    func addReservation(_ reservation: Reservation) {
           reservations.append(reservation)
        //print("Here adding reservation")
       }
}
