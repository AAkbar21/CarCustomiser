//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Akbar, Abdullah (RCH) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    let car =  Car(make:"Mazda", model:"MX-5", topSpeed: 125, acceleration:7.7, handling: 5)

    
    var body: some View {
        Text("""
             Car Make: \(car.make)
             Car Model: \(car.model)
             Car topSpeed(125mph): \(car.topSpeed)
             Car acceleration(0-60): \(car.acceleration)s
             Car handling: \(car.handling)
             """)
            .padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
