//
//  SearchViewModel.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import Foundation

struct SearchViewModel: Hashable {
    let subtitleText: String
    var image: String

    static let musicList = [
        SearchViewModel(subtitleText: "Spatial Audio", image: "musicList1"),
        SearchViewModel(subtitleText: "The Apple Music 1 List", image: "musicList2"),
        SearchViewModel(subtitleText: "The Apple Music 1 List", image: "musicList"),
        SearchViewModel(subtitleText: "The Apple Music 1 List", image: "musicList"),
    ]
    
    static let categoryList = [
        SearchViewModel(subtitleText: "Spatial Audio", image: "categoryList-1"),
        SearchViewModel(subtitleText: "Hits", image: "categoryList-2"),
        SearchViewModel(subtitleText: "Rock", image: "categoryList-3"),
        SearchViewModel(subtitleText: "Apple Music Classical", image: "categoryList-14"),
        SearchViewModel(subtitleText: "Sing", image: "categoryList-4"),
        SearchViewModel(subtitleText: "Pop in Russian", image: "categoryList-5"),
        SearchViewModel(subtitleText: "Hip-Hop in Russian", image: "categoryList-7"),
        SearchViewModel(subtitleText: "Pop", image: "categoryList-6"),
        SearchViewModel(subtitleText: "Feel Good", image: "categoryList-8"),
        SearchViewModel(subtitleText: "Hits in Russian", image: "categoryList-9"),
        SearchViewModel(subtitleText: "Rock in Russian", image: "categoryList-11"),
        SearchViewModel(subtitleText: "Dj Mixes", image: "categoryList-10"),
        SearchViewModel(subtitleText: "Up Next", image: "categoryList-12"),
        SearchViewModel(subtitleText: "Hip-Hop/Rap", image: "categoryList-13"),
    ]
}
