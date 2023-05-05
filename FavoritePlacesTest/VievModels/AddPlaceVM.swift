//
//  AddPlaceViewModel.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 04/05/2023.
//

import Foundation
import SwiftUI

class AddPlaceVM: ObservableObject {
    @Published var name: String = "Taj Mahal"
    @Published var city: String = ""
    @Published var country: String = ""
    @Published var notes: String = ""
    
    @Published var showProgress = false
    
    @Published var image: Image?
    @Published var imageData: Data?
    
    func savePlace() async {
        if let data = imageData{
            CoreDataManager.shared.savePlace(name: name, notes: notes, city: city, country: country, imageData: data)
        }
    }
    
    func getImageFor(placeName: String) async {
        let encodedName = placeName.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
        let url = URL(string: "https://source.unsplash.com/1080x1350/?\(encodedName)")!
        do{
            let (data,_) = try await URLSession.shared.data(from:url)
            await MainActor.run{
                imageData = data
                image = Image(uiImage: UIImage(data: data)!)
            }
        } catch let err{
            print(err.localizedDescription)
        }
    }
}
