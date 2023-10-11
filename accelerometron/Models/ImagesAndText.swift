//
//  ImagesAndText.swift
//  accelerometron
//
//  Created by Jimmy Ghelani on 2023-10-11.
//

import Foundation
import SwiftUI

struct ImagesAndText: Identifiable {
    let id = UUID()
    let image: ImageResource
    let title: String
    
    static let items: [ImagesAndText] = [
        ImagesAndText(image: .pexelsPhoto302588, title: "Stand"),
        ImagesAndText(image: .pexelsPhoto305243, title: "Urban"),
        ImagesAndText(image: .pexelsPhoto305254, title: "City"),
        ImagesAndText(image: .pexelsPhoto305774, title: "Flowers"),
        ImagesAndText(image: .pexelsPhoto306036, title: "Animal"),
        ImagesAndText(image: .pexelsPhoto569995, title: "Camera")
    ]
}
