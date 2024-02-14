//
//  ContentView.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var flight1: Flight = Flight()
    
    //Environment Objects
    @EnvironmentObject var allReservations: AllReservations
    @EnvironmentObject var allFlights: AllFlights
    
    
    var body: some View {
        VStack {
            //Vstack
            
            //Text("Flight no: \(flight1.price)")
            
            TabView{
                FlightReservation()
                    //.environmentObject(AllFlights())
                    //.environmentObject(AllReservations())
                    .tabItem {
                        Image(systemName:"airplane")
                            .foregroundColor(.blue)
                        Text("Flights")
                    }
                ReservationHistory()
                    //.environmentObject(AllReservations())
                    .tabItem {
                        Image(systemName:"list.bullet")
                            .foregroundColor(.blue)
                        Text("History")
                    }
            }
        }
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AllFlights())
            .environmentObject(AllReservations())
    }
}
