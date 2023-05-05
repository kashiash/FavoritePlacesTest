//
//  ContentView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 03/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
       // LazyViewExample()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LazyViewExample: View {
    var body: some View{
        NavigationStack{
            List{
                ForEach(0...100,id: \.self) { i in
                    NavigationLink{
                        //ItemCellView(itemName: "View \(i)")
                        
                        LazyView{
                            ItemCellView(itemName: "View \(i)")
                        }
                        
                    } label :{
                        Text("View \(i)")
                    }
                }
            }
        }
    }
}

struct ItemCellView: View {
    var itemName: String
    init(itemName: String){
        self.itemName = itemName
        print("item \(itemName) initialized")
    }
    var body: some View{
        Text("Hello world")
        Text("Item \(itemName) ")
    }
}
