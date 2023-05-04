//
//  PlacesListVM.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 04/05/2023.
//

import Foundation


class PlacesListVM: ObservableObject{
    @Published var places = [PlaceViewModel]()
    @Published var showAddSheet = false
    
    init(){
        fetchPlaces()
    }
    func fetchPlaces(){
        places = PlaceViewModel.sampleData
    }
}
