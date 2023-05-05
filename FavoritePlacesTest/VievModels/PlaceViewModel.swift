//
//  PlaceViewModel.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 04/05/2023.
//

import Foundation
import SwiftUI

class PlaceViewModel :Identifiable{
    var id: UUID
    var name: String
    var city: String
    var country: String
    var notes: String
    var placeImage: Image
    
    init(id: UUID,name: String,city: String, country:String, notes: String, placeImage:Image){
        self.id = id
        self.name = name
        self.city = city
        self.country = country
        self.notes = notes
        self.placeImage = placeImage
    }
}

extension PlaceViewModel {
    static var sampleData: [PlaceViewModel] {
        [
            .init(id: UUID(), name: "Eiffel Tower", city: "Paris", country: "France", notes: "A famous iron lattice tower.", placeImage: Image("eiffel_tower")),
            .init(id: UUID(), name: "Statue of Liberty", city: "New York", country: "United States", notes: "A colossal statue symbolizing freedom.", placeImage: Image("statue_of_liberty")),
            .init(id: UUID(), name: "Colosseum", city: "Rome", country: "Italy", notes: "An ancient Roman gladiatorial arena.", placeImage: Image("colosseum")),
            .init(id: UUID(), name: "Taj Mahal", city: "Agra", country: "India", notes: "A white marble mausoleum and UNESCO World Heritage site.", placeImage: Image("taj_mahal")),

            .init(id: UUID(), name: "Machu Picchu", city: "Cusco Region", country: "Peru", notes: "An Incan citadel set high in the Andes Mountains.", placeImage: Image("machu_picchu")),
            
//                .init(id: UUID(), name: "Great Wall of China", city: "Beijing", country: "China", notes: "A series of fortifications built across China's historical northern borders.", placeImage: Image("great_wall_of_china")),
//            .init(id: UUID(), name: "Sydney Opera House", city: "Sydney", country: "Australia", notes: "A multi-venue performing arts center with a distinctive sail-like design.", placeImage: Image("sydney_opera_house")),
//            .init(id: UUID(), name: "Christ the Redeemer", city: "Rio de Janeiro", country: "Brazil", notes: "A large Art Deco statue of Jesus Christ atop Mount Corcovado.", placeImage: Image("christ_the_redeemer")),
//            .init(id: UUID(), name: "Pyramids of Giza", city: "Giza", country: "Egypt", notes: "Ancient pyramid-shaped masonry structures.", placeImage: Image("pyramids_of_giza")),
//            .init(id: UUID(), name: "Big Ben", city: "London", country: "United Kingdom", notes: "A famous clock tower at the Houses of Parliament.", placeImage: Image("big_ben"))
        ]
    }
}
