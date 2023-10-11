//
//  ContentView.swift
//  accelerometron
//
//  Created by Jimmy Ghelani on 2023-10-11.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    let imagesAndText: [ImagesAndText] = ImagesAndText.items
    
    // MARK: - BODY
    var body: some View {
        VStack {
            List {
                ForEach(imagesAndText) {imageAndText in
                    ParallaxView(item: imageAndText)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
            }
            .listStyle(.plain)
        } //: VSTACK
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
