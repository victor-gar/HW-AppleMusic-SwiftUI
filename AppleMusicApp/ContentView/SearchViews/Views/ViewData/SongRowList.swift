//
//  SongRowList.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 23.04.2023.
//

import SwiftUI

struct SongRowList: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())    ]
    
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: columns, spacing: 0) {
                ForEach(SearchViewModelMusic.songData.shuffled().prefix(20), id: \.self) { headPlaylist in
                    HStack(spacing: 0) {
                        VStack(){
                            Image(headPlaylist.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .cornerRadius(5)
                                .shadow(radius: 5)
                                .padding(.leading)
                                .padding(.top)
                                .padding(.bottom)
                        }
                        VStack(alignment: .leading){
                            Text(headPlaylist.titleText)
                                .font(.title2)
                            
                            Text(headPlaylist.subtitleText)
                                .font(.subheadline)
                                .foregroundColor(.systemGray)
                        }
                        .padding(.leading, 20)
                        Spacer()
                        VStack(){
                            Button(action: { }) {
                                Image(systemName: "ellipsis")
                                    .imageScale(.small)
                                    .padding(.trailing)
                            }
                        }
                    }
                    .frame(width: 400)

                }
            }
//            .padding(.vertical, 20)
        }
    }
    
    
    struct SongRowList_Previews: PreviewProvider {
        static var previews: some View {
            SongRowList()
        }
    }
}
