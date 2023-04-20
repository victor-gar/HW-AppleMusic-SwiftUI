//
//  CategoryViewSecond.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 21.04.2023.
//

import SwiftUI

struct CategoryViewSecond: View {
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(spacing: -25){
                    PlatlistViewHead()
                    Divider()
                    PlatlistViewSmall()
                }
            }
            .overlay(PlayerView()
                .overlay(Divider(),
                         alignment: .bottom), alignment: .bottom)
            .navigationTitle("Плейлист")
        }
    }
}

struct CategoryViewSecond_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewSecond()
    }
}
