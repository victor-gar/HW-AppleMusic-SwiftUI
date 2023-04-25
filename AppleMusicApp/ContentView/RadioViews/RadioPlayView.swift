//
//  RadioPlayView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct RadioPlayView: View {
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: rows) {
                ForEach(RadioMediaModel.radioPlaylist, id: \.self) { radioPlaylist in
                    VStack {
                        Text(radioPlaylist.subtitleText)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                        Text(radioPlaylist.text)
                            .font(.title)
                            .padding(.leading)
                        Image(radioPlaylist.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 200, alignment: .center)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .padding(.bottom)
                            .padding(.leading)
                        
                    }
                }
            }
        }
    }
}
