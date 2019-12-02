//
//  Artist.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct Artist: Codable {
    let profileImageURL: String
    let debut: String
    let born: String
    let activity: String
    let labels: String
    let award: String
    
    let albums: [Album]
    let songs: [Song]
}

struct Album: Codable, Hashable {
    let thumbnail: String
    let title: String
}

struct Song: Codable, Hashable {
    let thumbnail: String
    let title: String
}

class Storage {

    // singleton
    static let shared = Storage()
    
    let items: Artist =
        Artist(
            profileImageURL: "https://cdnimg.melon.co.kr/cm/artistcrop/images/000/27/744/27744_500.jpg?35bba080f93da7833861aaf9d7e28da1/melon/resize/416/quality/80/optimize",
            debut: "2005.07",
            born: "1985.01.29",
            activity: "솔로",
            labels: "일리네어 레코즈",
            award: "제4회 한국대중음악상|최우수 힙합 (음반부문)",
            albums: [
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/102/02/245/10202245_500.jpg?a4bcf93562c1b654363d0dcfa31aa8ce/melon/resize/260/quality/80/optimize",
                      title: "glow forever"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/100/63/354/10063354_500.jpg?b31757055111c63a821efb359d262671/melon/resize/260/quality/80/optimize",
                    title: "Millionaire Poetry"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/022/96/588/2296588_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "The Real Me (Remaster)"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/021/76/139/2176139_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "AMBITIQN"),
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/102/02/245/10202245_500.jpg?a4bcf93562c1b654363d0dcfa31aa8ce/melon/resize/260/quality/80/optimize",
                      title: "glow forever"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/100/63/354/10063354_500.jpg?b31757055111c63a821efb359d262671/melon/resize/260/quality/80/optimize",
                    title: "Millionaire Poetry"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/022/96/588/2296588_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "The Real Me (Remaster)"),
                
                Album(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/021/76/139/2176139_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "AMBITIQN"),
            ],
            songs: [
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/102/02/245/10202245_500.jpg?a4bcf93562c1b654363d0dcfa31aa8ce/melon/resize/260/quality/80/optimize",
                      title: "한강 gang (Feat. Byung Un & CHANGMO)"),
                
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/100/63/354/10063354_500.jpg?b31757055111c63a821efb359d262671/melon/resize/260/quality/80/optimize",
                    title: "멀리 (Feat. Hash Swan & 우원재)"),
                
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/022/96/588/2296588_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "여름 밤"),
                
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/021/76/139/2176139_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "AMBITIQN"),
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/102/02/245/10202245_500.jpg?a4bcf93562c1b654363d0dcfa31aa8ce/melon/resize/260/quality/80/optimize",
                      title: "한강 gang (Feat. Byung Un & CHANGMO)"),
                
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/100/63/354/10063354_500.jpg?b31757055111c63a821efb359d262671/melon/resize/260/quality/80/optimize",
                    title: "멀리 (Feat. Hash Swan & 우원재)"),
                
                Song(
                    thumbnail: "https://cdnimg.melon.co.kr/cm/album/images/022/96/588/2296588_500.jpg/melon/resize/260/quality/80/optimize",
                    title: "여름 밤"),

            ])
    
}

