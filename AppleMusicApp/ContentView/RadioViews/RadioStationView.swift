//
//  RadioStationView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct RadioStationView: View {
    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(RadioMediaModel.radioStation, id: \.self) { mediaAsset in
                HStack {
                    Image(mediaAsset.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(5)
                        .shadow(radius: 5)
                        .padding(.leading)
                        .padding(.top)
                        .padding(.bottom)
                    VStack {
                        Spacer()
                        Text(mediaAsset.text)
                            .font(.title2)
                            .frame(width: 300, alignment: .leading)
                            .padding(.leading)
                        Text(mediaAsset.subtitleText)
                            .font(.subheadline)
                            .foregroundColor(.systemGray)
                            .frame(width: 300, alignment: .leading)
                            .padding(.leading)
                        Spacer()
                        Divider()
                    }
                }.padding(.leading)
            }
        }
    }
}
