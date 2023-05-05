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
                 placesView()
                
            } else {
                 emptyStateView()
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
            .sheet(isPresented: $viewModel.showAddSheet,
            onDismiss: {
                viewModel.fetchPlaces()
            }) {
                AddPlaceView()
                    .presentationDetents([.large])
                    .presentationDragIndicator(.hidden)
                    .presentationCornerRadius(20)
                    .presentationBackground(.ultraThinMaterial)
            }
            
        }
    }
    
    private func emptyStateView() -> some View{
        Group{
            Spacer()
            Text("Lets add some places by tapping +")
                .font(.largeTitle)
                .foregroundStyle(.secondary.opacity(0.5))
        }
    }
    
    private func placesView() -> some View{
        GeometryReader{geo in
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(viewModel.places){ place in
                    placeCell(place,imageMaxWidth: geo.size.width * 0.95)
                    }
                }
            }
            
        }
    }
    
    private func placeCell(_ place: PlaceViewModel, imageMaxWidth:CGFloat) -> some View{
        NavigationLink{
            Text(place.name)
        } label: {
            ZStack(alignment: .bottom) {
                place.placeImage
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: imageMaxWidth)
                
                VStack{
                    Label(place.name,systemImage: "mappin.circle.fill")
                        .minimumScaleFactor(0.5)
                        .padding(.horizontal)
                        .padding(.vertical,10)
                        .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 20))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    Spacer()
                    HStack{
                        Text(place.city)
                        Spacer()
                        Text(place.country)
                            .padding(.horizontal)
                            .padding(.vertical,10)
                            .background(.ultraThinMaterial)
                        
                    }
                    
                }
                .contentShape(Rectangle())
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .buttonStyle(.plain)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
