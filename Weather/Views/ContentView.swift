//
//  ContentView.swift
//  Weather
//
//  Created by Sothesom on 29/11/1403.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Your Location: \(location.longitude), \(location.latitude)")
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.707, saturation: 0.885, brightness: 0.416))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
