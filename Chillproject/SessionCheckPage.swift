//
//  SessionCheckPage.swift
//  Chillproject
//
//  Created by Sang Se Lee on 2019/09/25.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct SessionCheckPage: View {
    
    @State var isPresented = false
    @State var profileImage = UIImage(named: "default")!

    var body: some View {
        
        VStack(spacing: 16) {
            CircleImage(uiImage: profileImage, .profile)
                .onTapGesture {
                    self.isPresented.toggle()
                }
                .sheet(isPresented: $isPresented, content: {
                    ImagePickerView(
                        selectedImage: self.$profileImage,
                        isPresented: self.$isPresented)
                })
            
            KakaoLoginButton()
                .frame(width: 300, height: 50)
                .font(.system(size: .medium))
        }
    }
}

struct SessionCheckPage_Previews: PreviewProvider {
    static var previews: some View {
        SessionCheckPage()
    }
}
