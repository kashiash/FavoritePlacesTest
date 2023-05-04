//
//  AddPlaceViewModel.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 04/05/2023.
//

import Foundation
import SwiftUI

class AddPlaceVM: ObservableObject {
    @Published var name: String = ""
    @Published var city: String = ""
    @Published var country: String = ""
    @Published var notes: String = ""
    
    @Published var showProgress = false
    
    @Published var image: Image?
    @Published var imageData: Data?
    
    func savePlace() async {
        //core data manager save place
    }
    
    func getImageFor(placeName: String) async {
        let encodedName = placeName.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!
        let url = URL(string: "https://cource.unsplash.com/1080x1350/?\(encodedName)")!
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
