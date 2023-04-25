//
//  LibraryView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct LibraryView: View {

    var body: some View {
        TabView {
            Text("Cлушать")
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Слушать")
                }
            RadioView()
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }
            MediaMainView()
            .tabItem {
                Image(systemName: "play.square.stack.fill")
                Text("Медиатека")
            }
            SearchViews()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            SearchUiKitView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск UiKit")
                }
        }.accentColor(.systemRed)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

