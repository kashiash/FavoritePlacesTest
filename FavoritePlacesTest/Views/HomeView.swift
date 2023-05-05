//
//  HomeView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 05/05/2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = PlacesListVM()
    var body: some View {
        NavigationStack{
            //topHeader()
            if !viewModel.places.isEmpty{
                // placesView()
                
            } else {
                // emptyStateView()
            }
            Spacer()
        }
        .padding()
        .onAppear{
            viewModel.fetchPlaces()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
