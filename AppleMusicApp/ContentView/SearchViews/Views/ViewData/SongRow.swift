//
//  SongRow.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 22.04.2023.
//

import SwiftUI

struct SongRow: View {
    let song: SearchViewModelMusic
    
    var body: some View {
        HStack {
            VStack() {
                Image(song.image)
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
                Text(song.titleText)
                    .font(.title2)
                Text(song.subtitleText)
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
