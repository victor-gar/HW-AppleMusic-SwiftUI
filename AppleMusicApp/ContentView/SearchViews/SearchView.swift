//
//  SearchViews.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 20.04.2023.
//

import SwiftUI

struct SearchViews: View {
    @State private var searchText = ""
    @State private var isSearching = false
    @State private var songs: [SearchViewModelMusic] = SearchViewModelMusic.songData
    @State private var albums: [SearchViewModelPlaylist] = SearchViewModelPlaylist.albumData
    @State private var selectedPicker = 0
    @State private var showCategory = true


    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Артисты, песни, тексты и др.", text: $searchText, onEditingChanged: { isEditing in
                        
                    })
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                    .onTapGesture {
                        isSearching = true
                        withAnimation {
                            showCategory = false
                        }
                    }
                    
                    if isSearching {
                        Button(action: {
                            withAnimation {
                                searchText = ""
                                isSearching = false
                                UIApplication.shared.endEditing()
                                showCategory = true
                            }
                        }) {
                            Text("Cancel")
                        }
                        .padding(.trailing, 20)
                        .transition(.move(edge: .trailing))
                        .animation(.easeIn, value: isSearching)
                    }
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
                
                if showCategory {
                    
                   
                    
                    CategoryViewFirst()
                        .transition(.move(edge: .trailing))
                        .animation(.easeInOut(duration: 0.1), value: showCategory)
                        .padding(.horizontal)
                        .onTapGesture {
                            withAnimation {
                                showCategory = false
                            }
                        }
                }
                
                if isSearching {
                    ScrollView {
                        HStack{
                            Text("Недавние поиски")
                                .font(Font.subheadline.bold())
                                .foregroundColor(.systemGray)
                            Spacer()
                            
                            Text("Очистить")
                                .font(Font.subheadline.bold())
                                .foregroundColor(.systemRed)
                        }
                        .padding(.horizontal)
                        
                        LazyVStack {
                            ForEach(songs.filter {
                                $0.titleText.localizedCaseInsensitiveContains(searchText)
                            }) { song in
                                NavigationLink(destination: PlayerView()) {
                                    SongRow(song: song) }
                                    .foregroundColor(Color.black)
                            }
                            ForEach(albums.filter {
                                $0.titleText.localizedCaseInsensitiveContains(searchText)
                            }) { album in
                                AlbumRow(album: album)
                            }
                        }
                    }
                    .transition(.move(edge: .trailing))
                    .animation(.easeInOut, value: isSearching)
                    .onTapGesture {
                        UIApplication.shared.endEditing()
                    }
                    .gesture(DragGesture().onChanged { _ in
                        UIApplication.shared.endEditing()
                    })
                } else {
                    
                    ForEach(songs.filter {
                        $0.titleText.localizedCaseInsensitiveContains(searchText)
                    }) { song in
                        
                        SongRow(song: song)
                    }
                    
                    ForEach(albums.filter {
                        $0.titleText.localizedCaseInsensitiveContains(searchText)
                    }) { album in
                        AlbumRow(album: album)
                    }
                }
                Spacer()
            }
            .padding(.bottom, 80)
            .navigationTitle("Search")
            .overlay(PlayerView()
                .overlay(Divider(),
                         alignment: .bottom), alignment: .bottom)
        }
    }
    
}



extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


struct SearchViews_Previews: PreviewProvider {
    static var previews: some View {
        SearchViews()
    }
}
