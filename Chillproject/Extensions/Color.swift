//
//  Helper.swift
//  Chillproject
//
//  Created by gcastle on 27/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

// MARK: - UIColor
extension UIColor {
    
    var color: Color {
        return Color(self)
    }
    
    static let defaultButton = hex(0x292929)
    static let kakaoBrown = hex(0x452007)
    static let lightGray = hex(0x9A9A9A)
    
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return UIColor(
            red: red / 255,
            green: green / 255,
            blue: blue / 255,
            alpha: 1.0)
    }
    
    static func hex(_ value: UInt32) -> UIColor {
        let r = CGFloat((value >> 16) & 0xff)
        let g = CGFloat((value >> 8) & 0xff)
        let b = CGFloat((value) & 0xff)
        return rgb(r, g, b)
    }
}

// for Darkmode
extension Color {
    static let oldPrimaryColor = Color(UIColor(named: "systemIndigo")!)
    static let newPrimaryColor = Color("newPrimaryColor")
}

