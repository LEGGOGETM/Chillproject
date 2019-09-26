//
//  SessionCheckPage.swift
//  Chillproject
//
//  Created by Sang Se Lee on 2019/09/25.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct SessionCheckPage: View {
    
    var body: some View {

        VStack {
            KakaoLoginButton()
                .frame(width: 350, height: 50)
                .font(.system(size: 14))
        }
    }
}

struct SessionCheckPage_Previews: PreviewProvider {
    static var previews: some View {
        SessionCheckPage()
    }
}
