    //
    //  AddPlaceView.swift
    //  FavoritePlacesTest
    //
    //  Created by Jacek Kosiński G on 04/05/2023.
    //

import SwiftUI

struct AddPlaceView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel = AddPlaceVM()
    
    var body: some View {
        ZStack {
            VStack {
                Text("New favorite place")
                    .font(.title)
                Group{
                    TextField("Name of the place:", text: $viewModel.name)
                    TextField("City:", text:  $viewModel.city)
                    TextField("Country:", text:  $viewModel.country)
                    TextField("Notes:", text:  $viewModel.notes)
                    
                }
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
                
                Spacer()
                
                if let image = viewModel.image{
                    image
                        .resizable()
                        .frame(width: 200,height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    Image("eiffel_tower")
                        .blur(radius: 5)
                        .frame(width: 200,height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Button("Get Image") {
                    Task{
                        await viewModel.getImageFor(placeName: viewModel.name)
                    }
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .disabled(viewModel.name.isEmpty)
                
                Spacer()
                HStack {
                    Button(action: {
                        savePlace()
                    }) {
                        Label("Save",systemImage: "doc.fill.badge.plus")
                        
                    }
                    .buttonStyle(.borderedProminent)
                    
                    
                    Button(role: .destructive, action: {
                        dismiss()
                    }
                           , label: {
                        Label("Cancel", systemImage: "x.square.fill")
                        
                    })
                    .buttonStyle(.borderedProminent)
                }
            }
            .padding()
            if viewModel.showProgress{
                Rectangle()
                    .foregroundStyle(Color.secondary.opacity(0.8))
                ProgressView{
                    Text("Saving new place ...")
                }
            }
        }
        .interactiveDismissDisabled()
    }
    private func savePlace() {
        viewModel.showProgress.toggle()
        Task{
            await viewModel.savePlace()
                //MARK dismiss in dispatch quee because save is async
            DispatchQueue.main.async {
                dismiss()
            }
        }
        
    }
}

struct AddPlaceView_Previews: PreviewProvider {
    static var previews: some View {
        AddPlaceView()
            .preferredColorScheme(.dark)
    }
}
