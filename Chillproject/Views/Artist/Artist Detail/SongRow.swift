//
//  SongRow.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct SongRow: View {
    
    let imageURL: String
    let title: String
    
    var body: some View {
        HStack {
            RoundedImage(imageURL: imageURL, imageSize: .small)
            Text(title)
                .font(.system(size: .small, weight: .bold))
        }
    }
}

