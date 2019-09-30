//
//  Helper.swift
//  Chillproject
//
//  Created by gcastle on 27/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

// MARK: - Font size
extension CGFloat {
    static let small: CGFloat = 12
    static let medium: CGFloat = 17
    static let large: CGFloat = 28
}

// MARK: - Color
extension Color {
    static let defaultButton = hex(0x292929)
    
    static func rgb(_ red: Double, _ green: Double, _ blue: Double) -> Color {
        return Color(red: red / 255, green: green / 255, blue: blue / 255)
    }
    
    static func hex(_ value: UInt32) -> Color {
        let r = Double((value >> 16) & 0xff)
        let g = Double((value >> 8) & 0xff)
        let b = Double((value) & 0xff)
        return rgb(r, g, b)
    }
}
