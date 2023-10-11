//
//  ImageWithLabelView.swift
//  accelerometron
//
//  Created by Jimmy Ghelani on 2023-10-11.
//

import SwiftUI

struct ParallaxMotionModifier: ViewModifier {
    @ObservedObject var manager: ParallaxController
    var magnitude: Double
    
    func body(content: Content) -> some View {
        content
            .offset(x: CGFloat(manager.x * magnitude), y: CGFloat(manager.y * magnitude))
    }
}

struct ParallaxView: View {
    // MARK: - PROPERTIES
    let item: ImagesAndText
    @ObservedObject private var manager = ParallaxController()
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(item.image)
                .frame(maxHeight: 120, alignment: .center)
                .modifier(ParallaxMotionModifier(manager: manager, magnitude: 15.0))
                .clipped()
            
            ZStack(alignment: .center) {
                Text(item.title)
                    .font(.custom("Avenir", size: 50.0))
                    .fontWeight(.black)
                    .italic()
                    .background(.black.opacity(0.30))
                    .foregroundStyle(.white)
            }
        } //: ZSTACK
//        .clipped()
    }
}

#Preview {
    ParallaxView(item: ImagesAndText.items[0])
}
