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
            topHeader()
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
    
    private func topHeader() -> some View{
        HStack{
            Text("**Favorite Places**")
                .font(.title)
            Spacer()
            Button(action: {viewModel.showAddSheet.toggle() }) {
                Image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.primary)
                    .tint(Color.orange.gradient)
            }
            
        }
    }
    
    private func emptyStateView() -> some View{
        HStack{
            
        }
    }
    
    private func placesView() -> some View{
        HStack{
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
