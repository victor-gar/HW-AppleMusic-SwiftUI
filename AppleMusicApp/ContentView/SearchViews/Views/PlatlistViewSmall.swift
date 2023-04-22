//
//  PlatlistViewSmall.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 21.04.2023.
//

import SwiftUI

struct PlatlistViewSmall: View {
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Text("Настроение-осень")
                    .font(Font.title2.weight(.bold))                  .foregroundColor(.label)
                    .padding(.leading)
                Spacer()
                
                Button(action: {}, label: { Text("См. все")
                        .font(.subheadline)
                        .foregroundColor(Color.systemRed)
                    .padding(.trailing)})
            }
            HStack {
                ScrollView(.horizontal) {
                    LazyHGrid(rows: rows, spacing: 0) {
                        ForEach(SearchViewModelPlaylist.albumData, id: \.self) { headPlaylist in
                            VStack(alignment: .leading, spacing: 1) {
                                Image(headPlaylist.image)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 220, height: 220, alignment: .center)
                                    .cornerRadius(5)
                                    .shadow(radius: 5)
                                    .foregroundColor(.systemGray)
                                    .font(.subheadline)
                                    .padding(.leading)
                                Text(headPlaylist.titleText)
                                    .font(Font.title3.weight(.medium))
                                    .padding(.leading)
                                Text(headPlaylist.subtitleText)
                                    .font(.subheadline)
                                    .foregroundColor(.systemGray)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                            }
                        }
                    }
                }
            }
        }
        .padding(.vertical, 70) // добавлено
    }
}


struct PlatlistViewSmall_Previews: PreviewProvider {
    static var previews: some View {
        PlatlistViewSmall()
    }
}



