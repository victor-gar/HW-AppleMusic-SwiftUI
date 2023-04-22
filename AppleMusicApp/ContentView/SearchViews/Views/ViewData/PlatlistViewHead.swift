//
//  PlatlistViewHead.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct PlatlistViewHead: View {
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators:  false){
            LazyHGrid(rows: rows) {
                ForEach(SearchViewModelPlaylist.albumData, id: \.self) { headPlaylist in
                    VStack(alignment: .leading) {
                        Text(headPlaylist.featuredText)
                            .foregroundColor(.systemGray)
                            .font(.subheadline)
                            .padding(.leading)
                        Text(headPlaylist.titleText)
                            .font(.title)
                            .foregroundColor(.label)
                            .padding(.leading)
                        Text(headPlaylist.subtitleText)
                            .font(.subheadline)
                            .foregroundColor(.systemGray)
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                        
                        Image(headPlaylist.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 340, height: 260, alignment: .center)
                            .cornerRadius(5)
                            .shadow(radius: 5)
                            .padding(.bottom, 5)
                            .padding(.leading)
                            .overlay(
                                Text(headPlaylist.discriptionText)
                                    .lineLimit(2)
                                    .font(.callout)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, -15)
                                    .padding(.vertical, 15),
                                alignment: .bottom)
                    }
                }
            }
        }
    }
}

struct PlatlistViewHead_Previews: PreviewProvider {
    static var previews: some View {
        PlatlistViewHead()
    }
}
