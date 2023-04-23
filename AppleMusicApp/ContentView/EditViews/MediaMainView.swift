//
//  MediaMainView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct MediaMainView: View {
    @State private var data = MusicModel.allData
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            
            VStack {
                Spacer()
                PlayerTextView()
                Spacer()
                PlayerView()
                    .overlay(Divider(), alignment: .bottom)
            }
            .navigationTitle("Медиатека")
            .toolbar {
                NavigationLink(
                    destination: EditMainView(),
                    label: {
                        Text("Править")
                            .foregroundColor(.systemRed)
                    }
                )
            }
        }
    }
}

struct MediaMainView_Previews: PreviewProvider {
    static var previews: some View {
        MediaMainView()
    }
}


