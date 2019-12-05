//
//  SearchBar.swift
//  Chillproject
//
//  Created by gcastle on 2019/12/05.
//  Copyright © 2019 Sang Se Lee. All rights reserved.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    
    @Binding var searchTerm: String
    
    class Coordinator: NSObject, UISearchBarDelegate {
        
        let parent: SearchBar
        
        init(_ parent: SearchBar) {
            self.parent = parent
        }
        
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            parent.searchTerm = searchBar.text ?? ""
        }
    }
    
    func makeCoordinator() -> SearchBar.Coordinator {
        return Coordinator(self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        searchBar.placeholder = "search"
        searchBar.autocapitalizationType = .none
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        
    }
}
