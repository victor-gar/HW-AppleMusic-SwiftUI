//
//  SearchViewModel.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import Foundation

struct SearchViewModelCategory: Hashable {
    let subtitleText: String
    var image: String
    
    static let categoryList = [
        SearchViewModelCategory(subtitleText: "Spatial Audio", image: "categoryList-1"),
        SearchViewModelCategory(subtitleText: "Hits", image: "categoryList-2"),
        SearchViewModelCategory(subtitleText: "Rock", image: "categoryList-3"),
        SearchViewModelCategory(subtitleText: "Apple Music Classical", image: "categoryList-14"),
        SearchViewModelCategory(subtitleText: "Sing", image: "categoryList-4"),
        SearchViewModelCategory(subtitleText: "Pop in Russian", image: "categoryList-5"),
        SearchViewModelCategory(subtitleText: "Hip-Hop in Russian", image: "categoryList-7"),
        SearchViewModelCategory(subtitleText: "Pop", image: "categoryList-6"),
        SearchViewModelCategory(subtitleText: "Feel Good", image: "categoryList-8"),
        SearchViewModelCategory(subtitleText: "Hits in Russian", image: "categoryList-9"),
        SearchViewModelCategory(subtitleText: "Rock in Russian", image: "categoryList-11"),
        SearchViewModelCategory(subtitleText: "Dj Mixes", image: "categoryList-10"),
        SearchViewModelCategory(subtitleText: "Up Next", image: "categoryList-12"),
        SearchViewModelCategory(subtitleText: "Hip-Hop/Rap", image: "categoryList-13"),
    ]
}



