//
//  TurnAroundView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 07/05/2023.
//

import SwiftUI
import MapKit

struct TurnAroundView: View {
    let coordinate: CLLocationCoordinate2D
    
    var body: some View {
        MapViewRepresentable(coordinate: coordinate) { request in
            print("Look Around Scene Request: \(request)")
        }
        .edgesIgnoringSafeArea(.top)
    }
}
