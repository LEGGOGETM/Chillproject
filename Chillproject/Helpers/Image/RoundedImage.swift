//
//  ItemImage.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct RoundedImage: View {
    
    @ObservedObject var imageLoader: ImageLoader
    
    let imageSize: ImageSize
    
    var size: CGFloat {
        return imageSize.rawValue
    }
    
    init(imageURL: String, imageSize: ImageSize) {
        self.imageLoader = ImageLoader(urlString: imageURL)
        self.imageSize = imageSize
    }
    
    var body: some View {
        Image(uiImage: ImageLoader.imageFromData(data: imageLoader.data))
            .resizable()
            .frame(width: size, height: size)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(12)
    }
}
