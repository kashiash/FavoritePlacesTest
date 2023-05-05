//
//  MapDetailView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 06/05/2023.
//

import SwiftUI
import MapKit

struct MapDetailView: View {
    let place: PlaceViewModel
    @ObservedObject var locationManager: LocationManager
    @Environment(\.dismiss) var dismiss
    init(place: PlaceViewModel){
        self.place = place
        self.locationManager = LocationManager()
        locationManager.getLocationFor(address: place.city + " " + place.country)
    }
    var body: some View {
        ZStack{
            Map(coordinateRegion: $locationManager.region, interactionModes: .zoom)
                .frame(maxHeight: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .onAppear{
//            locationManager.getLocationFor(address: place.city + " " + place.country)
        }
    }
}

struct MapDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MapDetailView(place: PlaceViewModel.sampleData.randomElement()!)
    }
}
