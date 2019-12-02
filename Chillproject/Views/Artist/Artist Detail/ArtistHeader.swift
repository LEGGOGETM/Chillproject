//
//  ArtistHeader.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct ArtistHeader: View {
    
    let imageURL: String
    let title: String

    var body: some View {
        VStack(alignment: .leading) {
            
            RoundedImage(imageURL: imageURL, imageSize: .normal)

            Text(title)
                .lineLimit(2)
                .padding(.leading, 0)
                .padding(.top, 0)
                .font(.system(size: .tiny))
                .lineLimit(nil)
                .frame(width: 100, height: 30, alignment: .init(horizontal: .center, vertical: .top))
        }.frame(width: 100, alignment: .top)
    }
}
