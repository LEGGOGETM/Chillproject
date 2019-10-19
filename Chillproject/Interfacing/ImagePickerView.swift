//
//  ImagePickerView.swift
//  Chillproject
//
//  Created by gcastle on 2019/10/19.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var selectedImage: UIImage
    @Binding var isPresented: Bool
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePickerView
        
        init(_ parent: ImagePickerView) {
            self.parent = parent
        }
        
        func imagePickerController(
            _ picker: UIImagePickerController,
            didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = image
            }
            parent.isPresented = false
        }
    }
    
    func makeCoordinator() -> ImagePickerView.Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(
        context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIImagePickerController {
        let pickerController = UIImagePickerController()
        pickerController.delegate = context.coordinator
        return pickerController
    }
    
    func updateUIViewController(
        _ uiViewController: UIImagePickerController,
        context: UIViewControllerRepresentableContext<ImagePickerView>) {
        
    }
}
