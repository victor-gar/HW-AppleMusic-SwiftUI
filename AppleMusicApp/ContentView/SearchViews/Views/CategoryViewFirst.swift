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
        NavigationView {
            ScrollView(.vertical) {
                LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(SearchViewModelCategory.categoryList, id: \.self) { mediaAsset in
                          
                            NavigationLink(destination: CategoryViewSecond()) {
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
                .navigationBarTitle("Плейлист")
                        }
                    }
        .overlay(PlayerView()
            .overlay(Divider(),
                     alignment: .bottom), alignment: .bottom)
        .navigationTitle("Плейлист")
            }
    
           
        }


struct CategoryViewFirst_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewFirst()
    }
}






