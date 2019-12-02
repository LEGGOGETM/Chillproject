//
//  ImageLoader.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/02.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

class ImageLoader: ObservableObject {
    
    static func imageFromData(data: Data?) -> UIImage {
        guard let data = data, let uiImage = UIImage(data: data) else {
            return UIImage()
        }
        return uiImage
    }
    
    @Published var data: Data?
    
    init(urlString: String) {
        
        guard let url = URL(string: urlString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let err = error {
                print(err)
                return
            }
            
            guard let data = data else {
                return
            }
            
            DispatchQueue.main.async {
                self.data = data
            }
        }.resume()
    }
}

