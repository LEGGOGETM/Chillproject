//
//  CircleImage.swift
//  Chillproject
//
//  Created by gcastle on 30/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI


struct CircleImage: View {
    
    @ObservedObject var imageLoader: ImageLoader

    var imageType: ImageType
    let imageSize: ImageSize
    
    var size: CGFloat {
        return self.imageSize.rawValue
    }
    
    var image: Image {
        switch imageType {
        case .string(let imageString):
            return Image(imageString)
        case .image(let image):
            return Image(uiImage: image)
            
        case .urlString:
            let uiImage = ImageLoader.imageFromData(data: imageLoader.data)
            return Image(uiImage: uiImage)
        }
    }
    
    var body: some View {

        switch imageSize {
        case .normal:
            return AnyView(self.image
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size))
        case .large:
            return AnyView(self.image
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .scaledToFill())
        default:
            return AnyView(image)
        }
    }
    
    private init(_ imageType: ImageType, _ imageSize: ImageSize, urlString: String? = nil) {
        self.imageType = imageType
        self.imageSize = imageSize

        if let urlString = urlString {
            self.imageLoader = ImageLoader(urlString: urlString)
        } else {
            self.imageLoader = ImageLoader(urlString: "")
        }
    }

    init(named: String, imageSize: ImageSize) {
        self.init(ImageType.string(named), imageSize)
    }
    
    init(uiImage: UIImage, imageSize: ImageSize) {
        self.init(ImageType.image(uiImage), imageSize)
    }
    
    init(urlString: String, imageSize: ImageSize) {
        self.init(ImageType.urlString, imageSize, urlString: urlString)
    }
}
