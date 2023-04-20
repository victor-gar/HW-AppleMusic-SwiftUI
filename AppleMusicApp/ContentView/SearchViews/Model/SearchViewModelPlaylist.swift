//
//  SearchViewModelPlaylist.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import Foundation

struct SearchViewModelPlaylist: Hashable {
    let featuredText: String
    let titleText: String
    let subtitleText: String
    var image: String
    let discriptionText: String
        
    static let playlistGroup = [
        SearchViewModelPlaylist(featuredText: .updated, titleText: "Today's Hits", subtitleText: "Apple Music Hits", image: "playlistGroup-1", discriptionText: .discription),
        SearchViewModelPlaylist(featuredText: .updated, titleText: "A-List Pop", subtitleText: "Apple Music Pop", image: "playlistGroup-2", discriptionText: .discription),
        SearchViewModelPlaylist(featuredText: .updated, titleText: "3 Feet High and Rising", subtitleText: "De La Soul", image: "playlistGroup-6", discriptionText: .discription),
        SearchViewModelPlaylist(featuredText: .updated, titleText: "Today's Contry", subtitleText: "Apple Music Contry", image: "playlistGroup-5", discriptionText: .discription),
        SearchViewModelPlaylist(featuredText: .updated, titleText: "Hits in Spatial Audio", subtitleText: "Apple Music Hits", image: "playlistGroup-3", discriptionText: .discription),
        SearchViewModelPlaylist(featuredText: .updated, titleText: "Viral Hits", subtitleText: "Apple Music", image: "playlistGroup-4", discriptionText: .discription),
    ]
}
