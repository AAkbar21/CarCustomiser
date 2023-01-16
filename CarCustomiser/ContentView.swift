//
//  ContentView.swift
//  CarCustomiser
//
//  Created by Akbar, Abdullah (RCH) on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    let starterCars = StarterCars()
    @State private var selectedCar: Int = 0 {
        didSet {
            if selectedCar >= starterCars.cars.count {
                selectedCar = 0
            }
        }
    }
    @State private var exhaustPackage = false
    @State private var tiresPackage = false


    
    var body: some View {
        Form {
            VStack(alignment: .leading, spacing: 20) {
                Text(starterCars.cars[selectedCar].displayStats())
                Button("Next Car", action: {
                    selectedCar += 1
                })
                Toggle("Exhaust Package", isOn: $exhaustPackage)
                Toggle("Tires Package", isOn: $tiresPackage)
            }
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
