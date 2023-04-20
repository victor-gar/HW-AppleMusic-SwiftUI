//
//  LibraryView.swift
//  AppleMusicApp
//
//  Created by Victor Garitskyu on 19.04.2023.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        TabView {
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
                    }.tabItem {
                        Image(systemName: "play.circle.fill")
                        Text("Слушать")
                    }
            Text("Обзор")
                .tabItem {
                    Image(systemName: "rectangle.grid.2x2.fill")
                    Text("Обзор")
                }
                RadioView()
                        .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                        }
                 
            Text("Медиатека")
                .tabItem {
                    Image(systemName: "play.square.stack.fill")
                    Text("Медиатека")
                }
            Text("Поиск")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            
                }.accentColor(.systemRed)
            }
        }

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
