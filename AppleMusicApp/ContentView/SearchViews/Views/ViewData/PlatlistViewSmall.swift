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
       
        HStack {
            ScrollView(.horizontal,showsIndicators: false){
                LazyHGrid(rows: rows, spacing: 0) {
                    ForEach(SearchViewModelPlaylist.albumData.shuffled().prefix(5), id: \.self) { headPlaylist in
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
}

struct PlatlistViewSmall_Previews: PreviewProvider {
    static var previews: some View {
        PlatlistViewSmall()
    }
}



