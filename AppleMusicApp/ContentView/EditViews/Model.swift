//
//  model.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import Foundation

struct MusicModel: Hashable {
    let name: String
    let image: String
    var isSelected: Bool = false

    static let allData = [
        MusicModel(name: "Плейлисты", image: "music.note.list"),
        MusicModel(name: "Артисты", image: "music.mic"),
        MusicModel(name: "Альбомы", image: "square.stack"),
        MusicModel(name: "Песни", image: "music.note"),
        MusicModel(name: "Видеоклипы", image: "music.note.tv"),
        MusicModel(name: "Жанры", image: "text.insert"),
        MusicModel(name: "Телешоу", image: "play.tv.fill"),
        MusicModel(name: "Авторы", image: "music.quarternote.3"),
        MusicModel(name: "Загружено", image: "arrow.down.circle")
    ]
}
