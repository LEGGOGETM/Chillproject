//
//  KakaoLoginButton.swift
//  Chillproject
//
//  Created by gcastle on 25/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI
import KakaoOpenSDK

// MARK: - 기존 카카오버튼 SwiftUI와 연결
struct KakaoLoginButton: UIViewRepresentable {
    
    typealias UIViewType = KOLoginButton
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<KakaoLoginButton>) -> KOLoginButton {
        let button = KOLoginButton(type: .system)
        button.addTarget(
            context.coordinator,
            action: #selector(Coordinator.buttonPressed),
            for: .touchUpInside)
        return button
    }
    
    func updateUIView(_ uiView: KOLoginButton, context: UIViewRepresentableContext<KakaoLoginButton>) {
    }
    
    
    
    class Coordinator: NSObject {
        
        var button: KakaoLoginButton
        
        init(_ button: KakaoLoginButton) {
            self.button = button
        }
        
        @objc func buttonPressed() {
            guard let session = KOSession.shared() else {
                return
            }
            
            if session.isOpen() {
                session.close()
            }
            
            session.open(completionHandler: { (error) -> Void in
                
                if !session.isOpen() {
                    if let error = error as NSError? {
                        switch error.code {
                        case Int(KOErrorCancelled.rawValue):
                            break
                        default:
                            break
                        }
                    }
                }
            })
            // do something ...
        }
    }
    
}
