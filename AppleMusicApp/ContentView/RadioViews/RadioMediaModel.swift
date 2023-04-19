//
//  RadioMediaModel.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import Foundation


struct RadioMediaModel: Hashable {
    let text: String
    let subtitleText: String
    var image: String

    static let radioPlaylist = [
        RadioMediaModel(text: "THE APPLE MUSIC 1 LIST", subtitleText: "The Apple Music 1 List", image: "radioPlaylis1"),
        RadioMediaModel(text: "The Estella Show", subtitleText: "Estelle showcases music from Aaeries", image: "radioPlaylist2"),
        RadioMediaModel(text: "Music Hits", subtitleText: "Song you know and love", image: "radioPlaylis3")
    ]
    
    static let radioStation = [
        RadioMediaModel(text: "The Beat", subtitleText: "From Tuneln", image: "radioStation1"),
        RadioMediaModel(text: "KINK Distortion", subtitleText: "From Tuneln", image: "radioStatio2"),
        RadioMediaModel(text: "Kiss92FM", subtitleText: "From Tuneln", image: "radioStatio3"),
        RadioMediaModel(text: "DR P3", subtitleText: "From Tuneln", image: "radioStatio4"),
        RadioMediaModel(text: "702", subtitleText: "From Tuneln", image: "radioStatio5")
    ]
}
