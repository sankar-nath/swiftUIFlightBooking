//
//  ReservationHistory.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import SwiftUI

struct ReservationHistory: View {
    
    @EnvironmentObject var allReservations: AllReservations
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Reservation History")
                
                //Iterates through All Reservations and displays each item in a list
                List(allReservations.reservations) { reservation in
                    VStack {
                        Text(reservation.customerName)
                        Text("Booking Number: \(reservation.bookingNumber)")
                        
                        //This link calls up the ReservationDetails View which contains all the extra details
                        NavigationLink(destination: ReservationDetails(reservation: reservation)) {
                            Text("Details")
                        }
                    }
                }
            }
            .onAppear {
                print("Reservations count: \(allReservations.reservations.count)")
            }
        }
    }
}
struct ReservationHistory_Previews: PreviewProvider {
    static var previews: some View {
        ReservationHistory().environmentObject(AllReservations())
    }
}
