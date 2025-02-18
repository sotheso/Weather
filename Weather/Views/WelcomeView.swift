//
//  WellcomeView.swift
//  Weather
//
//  Created by Sothesom on 29/11/1403.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("Welcome to Weather app 'Sothesom'")
                    .bold().font(.title)
                    
                Text("plese allow location access to get your local weather")
                    .font(.title3)
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(20)
            .symbolVariant(.fill)
            .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
