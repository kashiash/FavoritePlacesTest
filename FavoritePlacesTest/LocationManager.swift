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


class LocationManager: ObservableObject {
    @Published var region: MKCoordinateRegion = MKCoordinateRegion(center: LocationManager.pointNemo, latitudinalMeters: 5000, longitudinalMeters: 5000)
    
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
}


extension LocationManager {
    static var pointNemo: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: 52.27433, longitude: 20.98141)
    }
}
