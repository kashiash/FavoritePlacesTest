//
//  MapViewRepresentable.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 07/05/2023.
//

import Foundation
import MapKit
import SwiftUI
import UIKit


struct MapViewRepresentable: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    var completion: ((MKLookAroundSceneRequest) -> Void)?
    
    let distance: CLLocationDistance = 200
    let pitch: CGFloat = 400
    let heading = 90.0
    
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        mapView.mapType = .satelliteFlyover
        
        let camera = MKMapCamera(lookingAtCenter: coordinate, fromDistance: distance, pitch: pitch, heading: heading)
        mapView.camera = camera
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {

    }
    
    class Coordinator: NSObject, MKMapViewDelegate {
        var parent: MapViewRepresentable
        
        init(_ parent: MapViewRepresentable) {
            self.parent = parent
        }
    }
}
