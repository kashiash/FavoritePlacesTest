//
//  CardView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 07/05/2023.
//

import SwiftUI

struct CardView: View {
    
    var body: some View{
        Rectangle()
            .fill(Color.pink)
            .frame(height: 600)
            .border(Color.black)
            .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
