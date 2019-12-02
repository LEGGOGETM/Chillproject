//
//  ImageSize.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//


enum ImageSize: CGFloat {
    case small = 50
    
    // 일반적인 컨텐츠 사이즈
    case normal = 100
    
    case large = 200
}

enum ImageType {
    
    // 로컬 이미지
    case string(String)
    case image(UIImage)
    
    // 외부
    case urlString
}
