//
//  LocationManager.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 05/05/2023.
//

import Foundation
import CoreLocation
import MapKit
import Foundation
import CoreLocation

class LocationManager: NSObject,ObservableObject,CLLocationManagerDelegate {
    @Published var region: MKCoordinateRegion = MKCoordinateRegion(center: LocationManager.pointNemo, latitudinalMeters: 5000, longitudinalMeters: 5000)
  
    
    private let locationManager = CLLocationManager()
    
    func getLocationFor(address: String) {
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(address) { [weak self] placemarks, error in
            guard
                let placemarks = placemarks,
                let location = placemarks.first?.location else {
                return
            }
            
            self?.region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 5000, longitudinalMeters: 5000)
        }
    }
    
    @Published var userLocation: CLLocationCoordinate2D?
    
    override init() {
        super.init()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if userLocation != nil { return }
        guard let location = locations.last else { return }
        
        userLocation = location.coordinate
    }
}


extension LocationManager {
    static var pointNemo: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: 52.27433, longitude: 20.98141)
    }
}
