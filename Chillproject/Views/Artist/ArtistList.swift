//
//  ArtistList.swift
//  Chillproject
//
//  Created by gcastle on 2019/11/29.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct ArtistList: View {
    
    let items = ["The Quiett"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { name in
                NavigationLink(destination: ArtistDetails(name: name)) {
                    Text(name)
                }
            }
        }.navigationBarTitle("Artist")
    }
}
