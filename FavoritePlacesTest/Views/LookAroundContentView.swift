//
//  LookAroundContentView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 07/05/2023.
//

import SwiftUI
import CoreLocation
import MapKit

struct LookAroundContentView: View {
    
    @Binding var tappedLocation: CLLocationCoordinate2D?
    @State private var showLookAround = false
    
    init(tappedLocation: Binding<CLLocationCoordinate2D?> = .constant(nil)) {
        self._tappedLocation = tappedLocation
    }
    
    var body: some View {
        NavigationView {
            VStack{
                MapView(tappedLocation: $tappedLocation)
                if tappedLocation != nil {
                    LookAroundView(tappedLocation: $tappedLocation, showLookAroundView: $showLookAround)
                }
            }
        }
        .ignoresSafeArea(.all)
    }
}
