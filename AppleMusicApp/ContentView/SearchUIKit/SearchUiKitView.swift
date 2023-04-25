//
//  SearchUiKitView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 25.04.2023.
//

import SwiftUI

struct SearchUiKitView: View {
    @State private var selectedPicker = 0
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Артисты, песни, тексты и др.", text: $searchText, onEditingChanged: {_ in })
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    Button(action: {}) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 20)
                }
                .frame(height: 30)
                .padding(.top, 10)
                
                VStack {
                    Picker("selectedPicker", selection: $selectedPicker, content: {
                        Text("Apple Music").tag(0)
                        Text("Ваша медиатека").tag(1)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                }
                .padding(.horizontal)
                .padding(.top, 5)
                .padding(.bottom, 20)
                SearchUiKitRepresentable()
                    .padding(.bottom, 60)
            }
            .navigationTitle("Search")
            .overlay(PlayerView()
                .overlay(Divider(),
                         alignment: .bottom), alignment: .bottom)
        }
    }
}

struct MyCollectionViewSec_Previews: PreviewProvider {
    static var previews: some View {
        SearchUiKitView()
    }
}
