//
//  LocationManager.swift
//  Uber SwiftUI App
//
//  Created by Agni Muhammad on 28/02/23.
//

import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    
    override init() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
