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
                        Image(systemName: "play.square.stack")
                        Text("Музыка")
                    }
                    Text("Радио")
                        .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                        }
                    Text("Поиск")
                        .tabItem {
                            Image(systemName: "magnifyingglass.circle.fill")
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
