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

enum ImageMode: CGFloat {
    case normal = 100
    case profile = 200
}

enum ImageShape {
    case rectangle
    case circle
}

struct CircleImage: View {
    
    var imageType: ImageType
    let mode: ImageMode
    let shape: ImageShape
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
        case .normal:
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
    
    private init(_ imageType: ImageType, _ shape: ImageShape, _ mode: ImageMode) {
        self.mode = mode
        self.imageType = imageType
        self.shape = shape
    }

    init(named: String, _ shape: ImageShape, _ mode: ImageMode) {
        self.init(ImageType.string(named), shape, mode)
    }
    
    init(uiImage: UIImage, _ shape: ImageShape, _ mode: ImageMode) {
        self.init(ImageType.image(uiImage), shape, mode)
    }
}
