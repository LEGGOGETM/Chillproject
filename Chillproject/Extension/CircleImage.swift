//
//  CircleImage.swift
//  Chillproject
//
//  Created by gcastle on 30/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

enum ImageType {
    case string(String)
    case image(UIImage)
}

enum CircleMode: CGFloat {
    case contents = 100
    case profile = 200
}

struct CircleImage: View {
    
    var imageType: ImageType
    let mode: CircleMode
    
    var size: CGFloat {
        return self.mode.rawValue
    }
    
    var image: Image {
        switch imageType {
        case .string(let imageString):
            return Image(imageString)
        case .image(let image):
            return Image(uiImage: image)
        }
    }
    
    var body: some View {
        switch mode {
        case .contents:
            return AnyView(self.image
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size))
        case .profile:
            return AnyView(self.image
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .scaledToFill())
        }
    }
    
    private init(_ imageType: ImageType, _ mode: CircleMode) {
        self.mode = mode
        self.imageType = imageType
    }

    init(named: String, _ mode: CircleMode) {
        self.init(ImageType.string(named), mode)
    }
    
    init(uiImage: UIImage, _ mode: CircleMode) {
        self.init(ImageType.image(uiImage), mode)
    }
}
