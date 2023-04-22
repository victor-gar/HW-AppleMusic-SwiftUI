//
//  AlbumRow.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 22.04.2023.
//

import SwiftUI

struct AlbumRow: View {
    let album: SearchViewModelPlaylist
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Image(album.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80, alignment: .center)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                    .padding(.leading)
                    .padding(.top)
                    .padding(.bottom)
            }

            VStack(alignment: .leading) {
                Text(album.titleText)
                    .font(.title2)
                Text(album.subtitleText)
                    .font(.subheadline)
                    .foregroundColor(.systemGray)
            }
            Spacer()
            VStack() {
                Button(action: { }) {
                    Image(systemName: "ellipsis")
                        .imageScale(.small)
                        .padding(.trailing)
                }
            }
        }
        .frame(height: 82)
    }
}
