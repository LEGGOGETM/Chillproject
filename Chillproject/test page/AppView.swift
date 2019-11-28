//
//  AppView.swift
//  Chillproject
//
//  Created by gcastle on 2019/10/25.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct AppView: View {
    
    @State var selection = 0
    
    var body: some View {
        
        TabView(selection: $selection) {
            
            SessionCheckPage()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("first")
                }.tag(0)
            
            SessionCheckPage()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("second")
                }.tag(1)
            
            SessionCheckPage()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("third")
                }.tag(2)
        }
        .font(.headline)
        .accentColor(.newPrimaryColor)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

