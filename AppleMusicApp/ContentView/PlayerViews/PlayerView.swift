//
//  PlayerView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct PlayerView: View {
    @State private var showModal = false
    
    var body: some View {
        
        HStack {
            Button {
                showModal = true
            } label: {
                Image("musicList-12")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()
            }
            Text("Hajime, Pt.1")
                .font(.system(size: 20))
                .multilineTextAlignment(.leading)
            Spacer()
            
            Button {
                print("Play touch")
            } label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFill()
                    .accentColor(.label)
            }
            .frame(width: 20, height: 20, alignment: .center)
            .padding()
            
            Button {
                print("Forward touch")
            } label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .scaledToFill()
                    .accentColor(.label)
            }
            .frame(width: 20, height: 20, alignment: .center)
            .padding()
        }
        
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            alignment: .center
        )
        .sheet(isPresented: $showModal) { MusicPlayerView()}
        .background(Color.systemGray5)
    }
}



