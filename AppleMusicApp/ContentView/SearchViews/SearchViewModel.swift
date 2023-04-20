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
        SearchViewModel(subtitleText: "Spatial Audio", image: "musicList1"),
        SearchViewModel(subtitleText: "Hits", image: "musicList2"),
        SearchViewModel(subtitleText: "Rock", image: "musicList"),
        SearchViewModel(subtitleText: "Apple Music Classical", image: "musicList"),
        SearchViewModel(subtitleText: "Sing", image: "musicList"),
        SearchViewModel(subtitleText: "Pop in Russian", image: "musicList"),
        SearchViewModel(subtitleText: "Hip-Hop in Russian", image: "musicList"),
        SearchViewModel(subtitleText: "Pop", image: "musicList"),
        SearchViewModel(subtitleText: "Feel Good", image: "musicList"),
        SearchViewModel(subtitleText: "Hits in Russian", image: "musicList"),
        SearchViewModel(subtitleText: "Rock in Russian", image: "musicList"),
        SearchViewModel(subtitleText: "Dj Mixes", image: "musicList"),
        SearchViewModel(subtitleText: "Up Next", image: "musicList"),
        SearchViewModel(subtitleText: "Hip-Hop/Rap", image: "musicList"),
    ]
}
