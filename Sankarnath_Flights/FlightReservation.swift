//
//  FlightReservation.swift
//  Sankarnath_Flights
//
//  Created by Sankarnath Suresh on 13/02/24.
//

import SwiftUI

struct FlightReservation: View {
    @State private var arrivalCity: String = ""
    @State private var departureDate: Date = Date()
    @State private var customerName: String = ""
    @State private var passportNumber: String = ""
    @State private var flightDescription: String = ""
    @State private var currentFlight: Flight = Flight() //this stores the current flight
    
    @EnvironmentObject var allFlights: AllFlights
    @EnvironmentObject var allReservations: AllReservations
    

    var body: some View {
        VStack{
            Text("Flight Reservation Screen")
            Form{
                Text("Flights leaving from Vancouver(YVR)")
                
                Picker("Arrival Airport", selection: $arrivalCity){
                    Text("Toronto - YYZ").tag("YYZ")
                    Text("New York - JFK").tag("JFK")
                    Text("Dubai - DXB").tag("DXB")
                }//Picker ends here
                .onChange(of: arrivalCity){_ in
                  //Logic to update flightDescription from AllFlights which matches the selected Arrival City
                    var selectedFlight: Flight? {
                            allFlights.flights.first { $0.arrivalCity == arrivalCity }
                        }
                    currentFlight = selectedFlight!
                    flightDescription = selectedFlight!.description
                    
                    //Based on the Arrival City selected in the picker, the currentFlight object is stored with the Flight object
                    
                    print("here 2")
                }
                Text("\(flightDescription)")
                
                //onchange display text showing available flights
                DatePicker("\nDeparture Data",
                           selection: $departureDate,
                           in: Date.now..., //only future date
                           displayedComponents: [.date]
                )
                Text("Please enter your name")
                TextField("Customer Name", text: $customerName)
                Text("Please enter your passport number")
                TextField("Passport Number", text: $passportNumber)
                
                Button("Make Reservation"){
                    //call function
                    makeReservation()
                }
                Button("Clear Fields"){
                    //call function
                    clearFields()
                }
                
                
            }//Form ends here
        }//VStack ends here
        
    }
    
    private func makeReservation(){
        
        print("makeReservation()")
        
        //A new reservation object is created using the currentFlight object
        let newReservation = Reservation(customerName: customerName, passportNumber: passportNumber, flightNumber: currentFlight.flightNumber, departureDate: departureDate)
        
        //this new reservation is then added to the environmentObject which gets passed along
        allReservations.addReservation(newReservation)
        print("\(newReservation.bookingNumber)")
        clearFields()
    }
    
    private func clearFields(){
        //arrivalCity = ""
        departureDate = Date()
        customerName = ""
        passportNumber = ""
        flightDescription = ""
    }
}

struct FlightReservation_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
