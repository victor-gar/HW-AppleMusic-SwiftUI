//
//  CategoryView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct CategoryViewFirst: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State private var showingSheet = false
    
    var body: some View {
        
        VStack{
            ScrollView(.vertical,showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(SearchViewModelCategory.categoryList, id: \.self) { mediaAsset in
                        NavigationLink(destination: CategoryViewSecond()){
                            Image(mediaAsset.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(5)
                                .overlay(
                                    Text(mediaAsset.subtitleText)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 1)
                                        .padding(.vertical, 4),
                                    alignment: .bottom )
                        }
                    }
                }
            }
        }
    }
}

struct CategoryViewFirst_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewFirst()
    }
}






