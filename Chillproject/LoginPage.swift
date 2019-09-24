//
//  LoginPage.swift
//  Chillproject
//
//  Created by gcastle on 25/09/2019.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI
import Foundation
import KakaoOpenSDK

struct LoginPage: View {
    
    var body: some View {
        
        VStack {
            
            // 샘플코드
            KakaoLoginButton()
                .frame(width: 350, height: 50)
                .font(.system(size: 14))
            
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

