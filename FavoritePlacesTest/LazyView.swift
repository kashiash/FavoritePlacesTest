//
//  LazyView.swift
//  FavoritePlacesTest
//
//  Created by Jacek Kosiński G on 05/05/2023.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let content: () -> Content
    
    init(@ViewBuilder _ content: @escaping() -> Content){
        self.content = content
    }
    
    var body: some View {
        content()
    }
}


