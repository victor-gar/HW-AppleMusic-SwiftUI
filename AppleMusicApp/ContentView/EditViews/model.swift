//
//  model.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import Foundation

struct NusicModel: Hashable {
    let name: String
    let image: String
    var isSelected: Bool = false

    static let allData = [
        NusicModel(name: "Плейлисты", image: "music.note.list"),
        NusicModel(name: "Артисты", image: "music.mic"),
        NusicModel(name: "Альбомы", image: "square.stack"),
        NusicModel(name: "Песни", image: "music.note"),
        NusicModel(name: "Видеоклипы", image: "music.note.tv"),
        NusicModel(name: "Жанры", image: "text.insert"),
        NusicModel(name: "Телешоу", image: "play.tv.fill"),
        NusicModel(name: "Авторы", image: "music.quarternote.3"),
        NusicModel(name: "Загружено", image: "arrow.down.circle")
    ]
}
