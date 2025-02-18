//
//  ContentView.swift
//  Weather
//
//  Created by Sothesom on 29/11/1403.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var weatherManager = WeatherManager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                if let weather = weather {
                    WeatherView(weather: weather)
                } else {
                    LoadingView()
                        .task {
    // منتظر بمون اطلاعات رو بگیر
                            do {
                                weather = try await weatherManager.getWeather(latitude:  location.latitude, longitude: location.longitude)
                            } catch {
                                print("Error fetching getting weather data: \(error)")
                            }
                        }
                }
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
