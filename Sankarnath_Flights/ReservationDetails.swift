//
//  ReservationDetails.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import SwiftUI

struct ReservationDetails: View {
    var reservation: Reservation
    //called from ReservationHistory and just the current Reservation object is passed along
    
    var body: some View {
        List {
                   Section(header: Text("Customer Information")) {
                       Text("Name: \(reservation.customerName)")
                       Text("Passport: \(reservation.passportNumber)")
                   }
                   Section(header: Text("Flight Information")) {
                       Text("Flight Number: \(reservation.flightNumber)")
                       Text("Departure Date: \(reservation.departureDate)")
                   }
                   Section(header: Text("Booking Information")) {
                       Text("Booking Number: \(reservation.bookingNumber)")
                   }
               }
            
           }
       }

struct ReservationDetails_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
