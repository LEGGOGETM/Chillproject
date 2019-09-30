//
//  CircleImage.swift
//  Chillproject
//
//  Created by gcastle on 30/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

enum CircleMode: CGFloat {
    case contents = 100
    case profile = 200
}

struct CircleImage: View {
    
    let name: String
    let size: CGFloat
    let mode: CircleMode

    var body: some View {
        switch mode {
        case .contents:
            return AnyView(Image(self.name)
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size))
            
        case .profile:
            return AnyView(Image(self.name)
                .resizable()
                .clipShape(Circle())
                .frame(width: size, height: size)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10))
        }
    }
    
    init(_ name: String, _ mode: CircleMode) {
        self.name = name
        self.mode = mode
        self.size = mode.rawValue
    }
}
