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
        
        NavigationView {
                
            VStack(spacing: 24) {
                
                VStack(alignment: .center) {
                    Text("Welcome to ")
                        .customTitleText()
                    Text("ChillProject!")
                        .customTitleText()
                        .foregroundColor(.newPrimaryColor)
                }.padding(.top, 24)
                
                CircleImage(uiImage: profileImage, imageSize: .large)
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
                
                
                Spacer()
                
                // no authentication
                NavigationLink(destination: ArtistList()) {
                    Text("FREE PASS")
                        .frame(width: 100, height: 50)
                        .foregroundColor(.white)
                        .background(Color.newPrimaryColor)
                        .cornerRadius(5)
                }
            }.padding()
        }
    }
}

struct SessionCheckPage_Previews: PreviewProvider {
    static var previews: some View {
        SessionCheckPage()
    }
}
