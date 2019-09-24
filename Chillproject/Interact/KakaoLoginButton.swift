//
//  KakaoLoginButton.swift
//  Chillproject
//
//  Created by gcastle on 25/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

// MARK: - 기존 카카오버튼 SwiftUI와 연결
struct KakaoLoginButton: UIViewRepresentable {
    typealias UIViewType = KOLoginButton
    
    func makeUIView(context: UIViewRepresentableContext<KakaoLoginButton>) -> KOLoginButton {
        let button = KOLoginButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func updateUIView(_ uiView: KOLoginButton, context: UIViewRepresentableContext<KakaoLoginButton>) {

    }
}
