//
//  SearchViewModelMusic.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import Foundation

struct SearchViewModelMusic: Identifiable, Hashable {
    let id = UUID()
    let titleText: String
    let subtitleText: String
    var image: String
    
    static let songData: [SearchViewModelMusic] = [
        SearchViewModelMusic(titleText: "L'One", subtitleText: "Время", image: "musicList-1"),
        SearchViewModelMusic(titleText: "escape", subtitleText: "52 Герца", image: "musicList-2"),
        SearchViewModelMusic(titleText: "Jumanji", subtitleText: "Туда", image: "musicList-3"),
        SearchViewModelMusic(titleText: "maslo chernogo tmina", subtitleText: "что для тебя красота", image: "musicList-4"),
        SearchViewModelMusic(titleText: "CONTRAST", subtitleText: "За океанами", image: "musicList-5"),
        SearchViewModelMusic(titleText: "Jamik", subtitleText: "Этой ночью", image: "musicList-6"),
        SearchViewModelMusic(titleText: "104", subtitleText: "Королева", image: "musicList-7"),
        SearchViewModelMusic(titleText: "L(iZReal)", subtitleText: "Капризы", image: "musicList-8"),
        SearchViewModelMusic(titleText: "Andy Panda", subtitleText: "King Kong", image: "musicList-9"),
        SearchViewModelMusic(titleText: "qurt", subtitleText: "Я тебя хочу", image: "musicList-10"),
        SearchViewModelMusic(titleText: "Skryptonite", subtitleText: "Privychka", image: "musicList-11"),
        SearchViewModelMusic(titleText: "Miyagi & Эндшпиль", subtitleText: "Hajime, Pt.1", image: "musicList-12"),
        SearchViewModelMusic(titleText: "ST", subtitleText: "Каренина", image: "musicList-15"),
        SearchViewModelMusic(titleText: "Miyagi & Эндшпиль", subtitleText: "HATTORI", image: "musicList-16")
    ]
}
