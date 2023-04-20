//
//  CategoryView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct CategoryView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(SearchViewModelCategory.categoryList, id: \.self) { mediaAsset in
                    VStack(spacing: 0) {
                        Image(mediaAsset.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 185, height: 120)
                            .cornerRadius(5)
                            .overlay(
                                Text(mediaAsset.subtitleText)
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 1)
                                    .padding(.vertical, 4),
                                alignment: .bottom
                            )
                            .shadow(radius: 5)
                            .padding(.trailing, 5)
                            .padding(.leading, 5)
                    }
                }
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}


