//
//  Text.swift
//  Chillproject
//
//  Created by gcastle on 2019/11/29.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

// MARK: - Font size
extension CGFloat {
    static let small: CGFloat = 12
    static let medium: CGFloat = 17
    static let large: CGFloat = 36
}

extension Text {
    func customTitleText() -> Text {
        self
            .fontWeight(.black)
            .font(.system(size: .large))
    }
}
