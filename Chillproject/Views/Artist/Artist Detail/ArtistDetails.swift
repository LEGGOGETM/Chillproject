//
//  ArtistDetails.swift
//  Chillproject
//
//  Created by gcastle on 2019/11/29.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI
import Combine

struct ArtistDetails: View {
    
    let name: String
    let placeholder = ["데뷔", "생일", "활동유형", "소속사", "수상이력"]
    let item = Storage.shared.items
    
    var body: some View {
        
        VStack(alignment: .leading) {

            List {
            
                VStack {
                    HStack(spacing: 16) {
                        
                        CircleImage(urlString: self.item.profileImageURL, imageSize: .normal)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            ForEach(placeholder.indices, id: \.self) { indices in
                                HStack {
                                    VStack {
                                        Text(self.placeholder[indices])
                                            .foregroundColor(UIColor.lightGray.color)
                                            .font(.system(size: .small))
                                            .frame(width: 80, alignment: .leading)
                                    }
                                }
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(self.item.debut)
                                .font(.system(size: .small))
                            Text(self.item.born)
                                .font(.system(size: .small))
                            Text(self.item.activity)
                                .font(.system(size: .small))
                            Text(self.item.labels)
                                .font(.system(size: .small))
                            Text(self.item.award)
                                .font(.system(size: .small))
                                .lineLimit(0)
                        }
                    }
                }.frame(height: 140)

                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    VStack(alignment: .leading) {
                        Text("Albums")
                        HStack {
                            ForEach(self.item.albums, id: \.self) { album in
                                ArtistHeader(
                                    imageURL: album.thumbnail,
                                    title: album.title)
                            }
                        }
                    }
                }
                .navigationBarTitle(name)
                
                ForEach(self.item.songs, id: \.self) { song in
                    SongRow(imageURL: song.thumbnail, title: song.title)
                }
            }
        }
    }
}

