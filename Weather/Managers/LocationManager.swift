//
//  LocationManager.swift
//  Weather
//
//  Created by Sothesom on 29/11/1403.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func requestLocation() {
        isLoading = true
        manager.requestLocation()
    }
    
    // Kit -> Update Location
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading  = false
    }
    
    // func Error Location
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("error location",error)
        isLoading = false
    }
}
