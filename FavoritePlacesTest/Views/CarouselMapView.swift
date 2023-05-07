    //
    //  CarouselView.swift
    //  FavoritePlacesTest
    //
    //  Created by Jacek Kosiński G on 07/05/2023.
    //

import SwiftUI
import MapKit
import CoreLocation

struct CarouselMapView: View {
    let place: PlaceViewModel
    
    @State private var coordinate: CLLocationCoordinate2D?
    
 //   @Binding var tappedLocation: CLLocationCoordinate2D?
    @State private var showLookAround = false
    
    @State private var index = 0
    var body: some View {
        
        TabView{
            VStack{
                MapView(tappedLocation: $coordinate)
                if coordinate != nil {
                    LookAroundView(tappedLocation: $coordinate, showLookAroundView: $showLookAround)
                }
            }
            if let coordinate = coordinate {
                TurnAroundView(coordinate: coordinate)
            }

            MapView(tappedLocation: $coordinate)

        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .onAppear {
            
          //  getCoordinate(from: place.city + " " + place.country)
          //  getCoordinate(from: "Plac Defilad 1, 00-901 Warszawa Poland")
            
            getCoordinate(from: place.city + " " + place.country) { coordinate in
                self.coordinate = coordinate
            }
        }
        .frame(height: 800)
        
    }
    
    
    private func getCoordinate(from address: String, completion: @escaping (CLLocationCoordinate2D?) -> Void) {
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(address) { (placemarks, error) in
            guard let placemark = placemarks?.first, let location = placemark.location else {
                completion(nil)
                return
            }
            completion(location.coordinate)
        }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselMapView(place: PlaceViewModel.sampleData.randomElement()!)
    }
}
