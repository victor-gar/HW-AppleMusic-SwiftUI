//
//  RadioView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                RadioPlayView()
                Divider()
                Text("Станции")
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .frame(width: 400, alignment: .leading)
                    .padding(.leading)
                RadioStationView()

            }
            .overlay(PlayerView()
                .overlay(Divider(),
                         alignment: .bottom), alignment: .bottom)
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
